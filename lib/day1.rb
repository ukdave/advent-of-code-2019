# frozen_string_literal: true

class Day1
  def solve_part1 masses
    masses.sum {|mass| fuel(mass.to_i) }
  end

  def solve_part2 masses
    masses.sum {|mass| fuel2(mass.to_i) }
  end

  def fuel mass
    [(mass / 3).floor - 2, 0].max
  end

  def fuel2 mass
    f = fuel(mass)
    return f if f.zero?

    f + fuel2(f)
  end
end
