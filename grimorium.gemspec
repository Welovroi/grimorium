# encoding: utf-8

$:.push File.expand_path("../lib", __FILE__)

require "grimorium/version"

Gem::Specification.new do |s|
  s.name          = 'grimorium'
  s.version       = Grimorium::VERSION
  s.date          = '2014-04-10'
  s.summary       = "Summary: Under development"
  s.description   = "Desc: Under development"
  s.license       = 'MIT'
  s.authors       = ["Alejandro Gonzalez", "Ruben Santamaria"]
  s.email         = ['rsantamaria.dev@gmail.com']
  s.homepage      = 'http://github.com/Welovroi/grimorium'

  s.files         = Dir.glob("{lib}/**/*") + %w(README.md)
end