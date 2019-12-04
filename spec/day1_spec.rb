# frozen_string_literal: true

require "day1"

describe Day1 do
  describe "#solve_part1" do
    it "returns the sum of the fuel required for an array of masses" do
      expect(subject.solve_part1(%W[12\n 14\n])) == 4
    end
  end

  describe "#solve_part2" do
    it "returns the sum of the fuel required for an array of masses" do
      expect(subject.solve_part2(%W[12\n 14\n])) == 4
    end
  end

  describe "#fuel" do
    it "returns the fuel required for a given mass" do
      expect(subject.fuel(12)).to eq 2
      expect(subject.fuel(14)).to eq 2
      expect(subject.fuel(1969)).to eq 654
      expect(subject.fuel(100_756)).to eq 33_583
    end

    it "does not return negative values" do
      expect(subject.fuel(2)).to eq 0
    end
  end

  describe "#fuel2" do
    it "returns the fuel required for a given mass plus the fuel for the fuel" do
      expect(subject.fuel2(14)).to eq 2
      expect(subject.fuel2(1969)).to eq 966
      expect(subject.fuel2(100_756)).to eq 50_346
    end
  end
end
