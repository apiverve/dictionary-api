/// Response models for the Dictionary API.

/// API Response wrapper.
class DictionaryResponse {
  final String status;
  final dynamic error;
  final DictionaryData? data;

  DictionaryResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory DictionaryResponse.fromJson(Map<String, dynamic> json) => DictionaryResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DictionaryData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Dictionary API.

class DictionaryData {
  String? word;
  int? definitionCount;
  List<String>? definitions;

  DictionaryData({
    this.word,
    this.definitionCount,
    this.definitions,
  });

  factory DictionaryData.fromJson(Map<String, dynamic> json) => DictionaryData(
      word: json['word'],
      definitionCount: json['definitionCount'],
      definitions: (json['definitions'] as List?)?.cast<String>(),
    );
}

class DictionaryRequest {
  String word;

  DictionaryRequest({
    required this.word,
  });

  Map<String, dynamic> toJson() => {
      'word': word,
    };
}
