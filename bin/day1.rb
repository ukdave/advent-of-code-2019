#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH << "lib"
require "day1"

day1 = Day1.new
lines = File.readlines("fixtures/day1.txt")
puts day1.solve_part1(lines)
puts day1.solve_part2(lines)
