#!/usr/bin/env ruby

$:.unshift(File.expand_path('../../lib', __FILE__))
require 'onedim'

state, rule, freq = ARGV

state ||=
  '000000000000000000000000000000000000000000000000000000000000000000000000010'
rule ||=
  110
freq =
  (freq || 0.1).to_f

a = OneDim::Automaton.new(state, rule.to_i)

loop do
  puts '  ' + a.state_color
  sleep(freq)
  a.step
end

