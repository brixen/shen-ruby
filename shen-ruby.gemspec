lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'shen_ruby/version'

Gem::Specification.new do |s|
  s.name        = "shen-ruby"
  s.version     = ShenRuby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.license     = "Shen License and MIT License. See README.md for details."
  s.authors     = ["Greg Spurrier", "Mark Tarver"]
  s.email       = ["greg@sourcematters.org"]
  s.homepage    = "https://github.com/gregspurrier/shen-ruby"
  s.summary     = %q{ShenRuby is a Ruby port of the Shen programming language}
  s.description = %q{ShenRuby is a port of the Shen programming language to Ruby. It currently supports Shen version 8.0.}

  s.required_ruby_version     = ">= 1.9.3"

  s.add_development_dependency "rspec", "~> 2.12"

  git_files            = `git ls-files`.split("\n") rescue ''
  s.files              = git_files
  s.test_files         = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables        = %w(srrepl)
  s.require_paths      = ["lib", "shen/lib"]
end
