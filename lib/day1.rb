# frozen_string_literal: true

class Day1
  def solve masses
    masses.sum {|mass| fuel(mass.to_i) }
  end

  def fuel mass
    (mass / 3).floor - 2
  end
end
