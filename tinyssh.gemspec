# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tinyssh/version'

Gem::Specification.new do |spec|
  spec.name          = "tinyssh"
  spec.version       = Tinyssh::VERSION
  spec.authors       = ["William Herry"]
  spec.email         = ["WilliamHerryChina@Gmail.com"]
  spec.description   = %q{Tiny SSH wrapper}
  spec.summary       = %q{Run SSH related command on multi machine}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
