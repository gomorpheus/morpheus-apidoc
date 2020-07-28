# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'morpheus-apidoc/version'

Gem::Specification.new do |gem|
  gem.name          = "morpheus-apidoc"
  gem.version       = Morpheus::Apidoc::VERSION
  gem.authors       = ["James Dickson"]
  gem.email         = ["jdickson@morpheusdata.com"]
  gem.description   = %q{Morpheus Data API Documentation}
  gem.summary       = %q{The Morpheus Data API documentation website for building and viewing the HTML documentation}
  gem.homepage      = "https://github.com/gomorpheus/morpheus-apidoc"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  
  gem.add_dependency 'middleman', '~>3.3.10'
  gem.add_dependency 'middleman-gh-pages', '~> 0.0.3'
  gem.add_dependency 'middleman-syntax', '~> 2.0.0'
  gem.add_dependency 'rouge', '~> 1.8.0'
  gem.add_dependency 'redcarpet', '~> 3.2.2'

  gem.add_dependency 'rake', '~> 12.3.3'
  gem.add_dependency 'therubyracer', '~> 0.12.1'

end
