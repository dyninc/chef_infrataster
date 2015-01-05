# encoding: UTF-8
require 'infrataster/rspec'
require 'infrataster-plugin-chef'

Infrataster::ChefServer.define(
  'provisiontest',
  '192.168.20.10',
  chefnode: File.expand_path('provision/repo/nodes/provisiontest.json'),
  vagrant: true
)
