require './lib/groupdocs_conversion_cloud/version'

Gem::Specification.new do |s|
  s.name        = 'groupdocs_conversion_cloud'
  s.version     = GroupDocsConversionCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.license     = 'MIT'
  s.summary     = 'GroupDocs.Conversion Cloud Ruby SDK'
  s.description = 'Ruby gem for communicating with the GroupDocs.Conversion Cloud API'
  s.author      = 'GroupDocs'
  s.email       = 'support@groupdocs.cloud'
  s.homepage    = 'https://products.groupdocs.cloud/conversion/ruby'
  s.metadata    = { 'source_code_uri' => 'https://github.com/groupdocs-conversion-cloud/groupdocs-conversion-cloud-ruby' }

  s.add_runtime_dependency 'faraday', '~> 1.0'
  s.add_runtime_dependency 'addressable', '~> 2.8.0', '>= 2.8.0'
  
  s.add_development_dependency 'minitest', '~> 5.11', '>= 5.11.3'

  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ['lib']
  s.required_ruby_version = '~> 2.7.4'
end
