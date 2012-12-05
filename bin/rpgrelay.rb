#!/usr/bin/ruby
# -*- encoding : utf-8 -*-
require 'rubygems'
require 'yaml'
require 'openpgp'
require 'openpgp/client/gnupg'
dir=Dir.home+'/.rpgrelay'
if File.exists? dir
  cfg=YAML.load_file dir
elsif system 'gpg -k'
  ret=`gpg -k`
  ret=ret.split("\n")[0]
  ret=ret[0..ret.rindex('/')]
  cfg={:home=>ret}
  File.open(dir,'w'){|f| f.write cfg.to_yaml}
else
  # chiedo con GUI
end
gnu=OpenPGP::Client::GnuPG.new({:homedir=>cfg[:home]})
gnu.list_keys
