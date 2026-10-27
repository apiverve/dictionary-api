Pod::Spec.new do |s|
  s.name             = 'APIVerveDictionary'
  s.version          = '1.2.3'
  s.summary          = 'Dictionary looks up word definitions for any given term.'
  s.description      = <<-'DESC'
Dictionary looks up word definitions for any given term. It returns every recorded meaning as a text list with a total definition count for e-readers, vocabulary builders, and writing assistants.

This iOS/macOS SDK provides a convenient way to access the Dictionary from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/dictionary?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/dictionary-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveDictionary/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
