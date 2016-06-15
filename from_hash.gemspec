# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'from_hash/version'

Gem::Specification.new do |spec|
  spec.name          = "from_hash"
  spec.version       = FromHash::VERSION
  spec.authors       = ["Mike Harris"]
  spec.email         = ["mharris717@gmail.com"]

  spec.summary       = "FromHash"
  spec.description   = "FromHash"
  spec.homepage      = "https://github.com/mharris717/from_hash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
