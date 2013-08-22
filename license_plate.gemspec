# -*- encoding: utf-8 -*-
require File.expand_path('../lib/license_plate/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jason Harrelson"]
  gem.email         = ["jason@lookforwardenterprises.com"]
  gem.description   = %q{Provides license plate attributes with composed_of pattern.}
  gem.summary       = %q{An extension that provides license plate attributes with composed_of pattern.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "license_plate"
  gem.require_paths = ["lib"]
  gem.version       = LicensePlate::VERSION
end
