#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH << "lib"
require "day3"

day3 = Day3.new
lines = File.readlines("fixtures/day3.txt")
line1 = lines[0].split(",")
line2 = lines[1].split(",")
puts day3.min_distance(line1, line2)
puts day3.min_steps(line1, line2)
