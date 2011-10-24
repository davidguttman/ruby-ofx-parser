# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ofx-parser"

Gem::Specification.new do |s|
  s.name        = "ofx-parser"
  s.version     = OfxParser::VERSION
  s.authors     = ["Andrew A. Smith"]
  s.email       = ["andy@tinnedfruit.org"]
  s.homepage    = "http://ofx-parser.rubyforge.org/"
  s.summary     = %q{ofx-parser is a ruby library for parsing OFX 1.x data.}
  s.description = %q{== FEATURES/PROBLEMS:

  * Reads OFX responses - i.e. those downloaded from financial institutions and
    puts it into a usable object graph.
  * Supports the 3 main message sets: banking, credit card and investment
    accounts, as well as the required 'sign on' set.
  * Knows about SIC codes - if your institution provides them.
    See http://www.eeoc.gov/stats/jobpat/siccodes.html
  * Monetary amounts can be retrieved either as a raw string, or in pennies.
  * Supports OFX timestamps.}

  s.rubyforge_project = "ofx-parser"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "hpricot", ">= 0.6"
end
