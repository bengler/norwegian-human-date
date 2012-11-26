# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "norwegian-human-date"
  s.version     = "0.0.1"
  s.authors     = ["Bengler AS"]
  s.email       = ["dev@bengler.no"]
  s.homepage    = "https://github.com/bengler/norwegian-human-date"
  s.summary     = %q{Parses a date into a Norwegian text}
  s.description = %q{Parses a date into a Norwegian text}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'timecop'
  s.add_runtime_dependency 'activesupport', '~> 3.2.9'
end
