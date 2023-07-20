require 'yaml'

pubspec = YAML.load_file(File.join('..', 'pubspec.yaml'))
library_version = pubspec['version'].gsub('+', '-')

Pod::Spec.new do |s|
  s.name             = pubspec['name']
  s.version          = library_version
  s.summary          = pubspec['description']
  s.description      = pubspec['description'] + ' This is a longer description of the project.'
  s.homepage         = pubspec['homepage'] || 'https://example.com'
  s.license          = { :file => '../LICENSE' }
  s.authors          = 'dronn1k'
  s.source           = { :path => '.' }

  s.source_files     = 'Classes/**/*.swift'

  s.ios.deployment_target = '12.0'
  s.dependency 'Flutter'

  s.static_framework = true
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end