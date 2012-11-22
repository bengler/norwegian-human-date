# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "./lib/norwegian_human_date"

Gem::Specification.new do |s|
  s.name        = "norwegian-human-date"
  s.version     = NorwegianHumanDate::VERSION
  s.authors     = ["Bengler AS"]
  s.email       = ["dev@bengler.no"]
  s.homepage    = "https://github.com/bengler/nowegian-human-date"
  s.summary     = %q{Parses a date into a Norwegian text}
  s.description = %q{Parses a date into a Norwegian text}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'timecop'
  s.add_dependency 'activesupport', ['>= 2.3.9', '< 4']

end
