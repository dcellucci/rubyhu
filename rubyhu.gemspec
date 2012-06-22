# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rubyhu/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel Cellucci"]
  gem.email         = ["visualbasicimp@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rubyhu"
  gem.require_paths = ["lib"]
  gem.version       = Rubyhu::VERSION
  gem.add_dependency  "thor"
  
  gem.add_development_dependency "rspec", "~> 2.6"
  gem.add_development_dependency "cucumber"
  gem.add_development_dependency "aruba"
end
