# frozen_string_literal: true

require "day1"

describe Day1 do
  describe "#solve" do
    it "returns the sum of the fuel required for an array of masses" do
      expect(subject.solve(%W[12\n 14\n])) == 4
    end
  end

  describe "#fuel" do
    it "returns the fuel required for a given mass" do
      expect(subject.fuel(12)).to eq 2
      expect(subject.fuel(14)).to eq 2
      expect(subject.fuel(1969)).to eq 654
      expect(subject.fuel(100_756)).to eq 33_583
    end
  end
end
