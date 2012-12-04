# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
#require "v8/version"

Gem::Specification.new do |s|
  s.name = "rpgrelay"
  s.platform = Gem::Platform::RUBY
  s.summary = "GpgReplay porting for Ruby"
  s.version = "0.0.1"
  s.authors = ["Davide Rizzi"]
  s.description = "Automatic Encrypt/Sign and Decrypt/Verify for POP3, SMTP and NNTP account"
  s.homepage = "http://github.com/sadjehwty/rpgrelay"
  s.email = "oomushi@gmail.com"

  s.files = Dir['lib/**/*.rb'] + Dir['bin/*']
  s.bindir = 'bin'
  s.require_paths = ["lib"]

  s.add_dependency "mini-smtp-server"
  s.add_dependency "mail"
  s.add_dependency "green_shoes"
  s.add_dependency "openpgp"
  
  s.requirements << 'GnuPG'

# s.add_development_dependency "rake"
# s.add_development_dependency "rake-compiler"
end
