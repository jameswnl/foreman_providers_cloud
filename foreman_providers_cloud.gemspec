require File.expand_path('../lib/foreman_providers_cloud/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'foreman_providers_cloud'
  s.version     = ForemanProvidersCloud::VERSION
  s.license     = 'GPL-3.0'
  s.authors     = ['Adam Grare', 'Ladislav Smola', 'James Wong']
  s.email       = ['agrare@redhat.com', 'lsmola@redhat.com', 'jwong@redhat.com']
  s.homepage    = 'https://github.com/jameswnl/foreman_providers-cloud'
  s.summary     = 'Foreman Cloud Providers plugin.'
  # also update locale/gemspec.rb
  s.description = 'Foreman Cloud Providers plugin.'

  s.files = Dir['{app,config,db,lib,locale}/**/*'] + ['LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rdoc'
end
