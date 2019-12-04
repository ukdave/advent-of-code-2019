#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH << "lib"
require "day1"

lines = File.readlines("fixtures/day1.txt")
puts Day1.new.solve(lines)
