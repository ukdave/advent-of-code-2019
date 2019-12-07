# frozen_string_literal: true

require "day3"

describe Day3 do
  describe "#solve" do
    it "returns the short distance to the center for any intersection points of two lines" do
      expect(subject.solve(%w[R75 D30 R83 U83 L12 D49 R71 U7 L72],
                           %w[U62 R66 U55 R34 D71 R55 D58 R83])).to eq 159
      expect(subject.solve(%w[R98 U47 R26 D63 R33 U87 L62 D20 R33 U53 R51],
                           %w[U98 R91 D20 R16 D67 R40 U7 R15 U6 R7])).to eq 135
    end
  end

  describe "#line_coords" do
    it "generates coordinates for a list of instructions" do
      expect(subject.line_coords(%w[U2 R2 D2 L2])).to eq [[0, 0],
                                                          [0, 1], [0, 2],
                                                          [1, 2], [2, 2],
                                                          [2, 1], [2, 0],
                                                          [1, 0], [0, 0]]
    end
  end

  describe "#instruction_coords" do
    it "generates coordinates for up" do
      expect(subject.instruction_coords([0, 0], "U3")).to eq [[0, 1], [0, 2], [0, 3]]
    end

    it "generates coordinates for down" do
      expect(subject.instruction_coords([0, 0], "D3")).to eq [[0, -1], [0, -2], [0, -3]]
    end

    it "generates coordinates for left" do
      expect(subject.instruction_coords([0, 0], "L3")).to eq [[-1, 0], [-2, 0], [-3, 0]]
    end

    it "generates coordinates for right" do
      expect(subject.instruction_coords([0, 0], "R3")).to eq [[1, 0], [2, 0], [3, 0]]
    end
  end
end
