#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH << "lib"
require "day2"

day2 = Day2.new
program = File.read("fixtures/day2.txt").split(",").map(&:to_i)
program[1] = 12
program[2] = 2
result = day2.solve(program)
puts result[0]
