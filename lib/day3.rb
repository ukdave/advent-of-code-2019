# frozen_string_literal: true

class Day3
  def solve line1, line2
    line1_coords = line_coords(line1)
    line2_coords = line_coords(line2)
    intersections = (line1_coords & line2_coords) - [[0, 0]]
    intersections.map {|coords| manhattan_distance_form_start(coords) }.min
  end

  def manhattan_distance_form_start coords
    coords.sum(&:abs)
  end

  def line_coords line
    line.each_with_object([[0, 0]]) do |instruction, coords|
      coords.concat(instruction_coords(coords.last, instruction))
    end
  end

  # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
  def instruction_coords start_coords, instruction
    dir = instruction[0]
    dist = instruction[1..].to_i
    case dir
    when "U"
      (start_coords[1] + 1..start_coords[1] + dist).map {|n| [start_coords[0], n] }
    when "D"
      (start_coords[1] - 1).downto(start_coords[1] - dist).map {|n| [start_coords[0], n] }
    when "L"
      (start_coords[0] - 1).downto(start_coords[0] - dist).map {|n| [n, start_coords[1]] }
    when "R"
      (start_coords[0] + 1..start_coords[0] + dist).map {|n| [n, start_coords[1]] }
    end
  end
  # rubocop:enable Metrics/AbcSize, Metrics/MethodLength
end
