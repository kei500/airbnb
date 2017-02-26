lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'airbnb/version'

Gem::Specification.new do |spec|
  spec.add_dependency 'http', '~> 2.0'
  spec.add_dependency 'mechanize', '~> 2.0'

  spec.name          = 'airbnb'
  spec.version       = Airbnb::VERSION
  spec.authors       = ['Kei Tsuchiya']
  spec.email         = ['kei.tsuchiya86@gmail.com']

  spec.description   = 'A Ruby interface to the Airbnb API.'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/kei500/airbnb'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
