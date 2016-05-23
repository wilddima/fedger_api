Gem::Specification.new do |s|
  s.name        = 'fedger_api'
  s.version     = '0.0.0'
  s.date        = '2016-03-26'
  s.summary     = 'FedgerApi'
  s.description = 'feger.io api gem'
  s.authors     = ['Dmitry Topornin']
  s.email       = 'dtopornin@gmail.com'
  s.files       = `git ls-files -z`.split("\x0")
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/WildDima/fedger_api'

  s.add_development_dependency "bundler", "~> 1.12"
  s.add_development_dependency "rake", "~> 11.0"
  s.add_development_dependency "rspec", "~> 3.0"
end
