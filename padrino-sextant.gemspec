# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'padrino/sextant/version'

Gem::Specification.new do |spec|
  spec.name          = "padrino-sextant"
  spec.version       = Padrino::Sextant::VERSION
  spec.authors       = ["Jörgen Nilsson"]
  spec.email         = ["me@jorgennilsson.com"]
  spec.summary       = %q{View your Padrino routes in the browser.}
  spec.description   = %q{An easy way to view your routes from internal mounted apps in the browser as an alternative to run rake routes.}
  spec.homepage      = "https://github.com/coffeepunk/padrino-sextant"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'erubis', '~> 2.7.0'
end
