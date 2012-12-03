#!/bin/env ruby
# -*- encoding: utf-8 -*-
require 'rubygems'
require 'yaml'
require 'openpgp'
require 'openpgp/client/gnupg'
cfg=YAML.load_file Dir.home+'/.rpgrelay'
gnu=OpenPGP::Client::GnuPG.new({:homedir=>cfg[:home]})
gnu.list_keys
