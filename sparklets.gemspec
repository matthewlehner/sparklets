# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sparklets/version'

Gem::Specification.new do |spec|
  spec.name          = "sparklets"
  spec.version       = Sparklets::VERSION
  spec.authors       = ["Matthew Lehner"]
  spec.email         = ["matthewlehner@gmail.com"]
  spec.description   = %q{Gem for building an icon font and letting the asset pipeline consume it}
  spec.summary       = %q{Icon font for the Sparkle Asset Pipeline}
  spec.homepage      = "https://github.com/scripps/sparklets"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.2", "< 5.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "fontcustom"
end
