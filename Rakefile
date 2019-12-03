# frozen_string_literal: true

require "rspec/core/rake_task"
require "rubocop/rake_task"
require "rainbow"

RuboCop::RakeTask.new
RSpec::Core::RakeTask.new(:rspec)

task default: %i[
  rubocop
  rspec
  ok
]

task :ok do
  puts
  print %i[red yellow green blue magenta].map {|c| Rainbow("*").bright.color(c) }.join
  print Rainbow(" ALL TESTS PASSED ").bright.green
  print %i[magenta blue green yellow red].map {|c| Rainbow("*").bright.color(c) }.join
  puts
end
