lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fedger_api/version'

Gem::Specification.new do |s|
  s.name        = 'fedger_api'
  s.version     = FedgerAPI::VERSION
  s.date        = '2016-03-26'
  s.summary     = 'feger.io api gem'
  s.description = 'feger.io api gem'
  s.authors     = ['Dmitry Topornin']
  s.email       = 'dtopornin@gmail.com'
  s.files       = `git ls-files -z`.split("\x0")
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/WildDima/fedger_api'

  s.add_dependency 'httparty', '~> 0.13'
  s.add_development_dependency 'rubocop', '~> 0.45'
  s.add_development_dependency 'bundler', '~> 1.13'
  s.add_development_dependency 'rake', '~> 11.0'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'vcr', '~> 3.0'
  s.add_development_dependency 'webmock', '~> 1.24'
end
