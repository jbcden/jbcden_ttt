# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jbcden_ttt/version'

Gem::Specification.new do |spec|
  spec.name          = "jbcden_ttt"
  spec.version       = JbcdenTtt::VERSION
  spec.date          = %q{2014-11-18}
  spec.authors       = ["Jacob Chae"]
  spec.email         = ["jbcden@gmail.com"]
  spec.summary       = %q{A basic command line based game of tic tac toe.}
  spec.homepage      = "https://github.com/jbcden/tic-tac-toe"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ["ttt"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
