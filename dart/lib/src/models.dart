/// Response models for the Dictionary API.

/// API Response wrapper.
class DictionaryResponse {
  final String status;
  final dynamic error;
  final DictionaryData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  DictionaryResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory DictionaryResponse.fromJson(Map<String, dynamic> json) => DictionaryResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DictionaryData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Dictionary API.

class DictionaryData {
  String? word;
  num? definitionCount;
  List<String>? definitions;
  String? matchedWord;
  String? matchType;
  List<dynamic>? baseForms;
  List<String>? partsOfSpeech;
  List<DictionaryDataMeaningsItem>? meanings;
  String? pronunciation;

  DictionaryData({
    this.word,
    this.definitionCount,
    this.definitions,
    this.matchedWord,
    this.matchType,
    this.baseForms,
    this.partsOfSpeech,
    this.meanings,
    this.pronunciation,
  });

  factory DictionaryData.fromJson(Map<String, dynamic> json) => DictionaryData(
      word: json['word'],
      definitionCount: json['definitionCount'],
      definitions: (json['definitions'] as List?)?.cast<String>(),
      matchedWord: json['matchedWord'],
      matchType: json['matchType'],
      baseForms: (json['baseForms'] as List?)?.cast<dynamic>(),
      partsOfSpeech: (json['partsOfSpeech'] as List?)?.cast<String>(),
      meanings: (json['meanings'] as List?)?.map((e) => DictionaryDataMeaningsItem.fromJson(e)).toList(),
      pronunciation: json['pronunciation'],
    );
}

class DictionaryDataMeaningsItem {
  String? partOfSpeech;
  String? definition;
  List<dynamic>? examples;
  List<dynamic>? synonyms;

  DictionaryDataMeaningsItem({
    this.partOfSpeech,
    this.definition,
    this.examples,
    this.synonyms,
  });

  factory DictionaryDataMeaningsItem.fromJson(Map<String, dynamic> json) => DictionaryDataMeaningsItem(
      partOfSpeech: json['partOfSpeech'],
      definition: json['definition'],
      examples: (json['examples'] as List?)?.cast<dynamic>(),
      synonyms: (json['synonyms'] as List?)?.cast<dynamic>(),
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
