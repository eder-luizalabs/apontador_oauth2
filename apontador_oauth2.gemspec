# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apontador_oauth2/version'

Gem::Specification.new do |spec|
  spec.name          = "apontador_oauth2"
  spec.version       = ApontadorOauth2::VERSION
  spec.authors       = ["edereduardo"]
  spec.email         = ["eder.esilva@gmail.com"]
  spec.description   = %q{Apontador Oauth2 is a helper for help requests to Api of Apontador}
  spec.summary       = %q{A tool for authenticator with Oauth2 of Apontador}
  spec.homepage      = "http://edereduardo.wordpress.com/"
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency  "faraday", "~> 0.8.8"
  spec.add_runtime_dependency  "json", "~> 1.8.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

end
