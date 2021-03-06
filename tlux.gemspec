# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tlux/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Oliver Nightingale"]
  gem.email         = ["oliver.nightingale1@gmail.com"]
  gem.description   = %q{Luxurious tmux configuration}
  gem.summary       = %q{Luxurious tmux configuration}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tlux"
  gem.require_paths = ["lib"]
  gem.version       = Tlux::VERSION

  gem.add_dependency('commander')

  gem.add_development_dependency('rspec')
  gem.add_development_dependency('rake')
  #gem.add_development_dependency('fakefs')
end
