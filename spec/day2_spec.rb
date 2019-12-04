# frozen_string_literal: true

require "day2"

describe Day2 do
  describe "#solve" do
    it do
      expect(subject.solve([1, 5, 6, 3, 99, 10, 20])).to eq [1, 5, 6, 30, 99, 10, 20]
      expect(subject.solve([1, 9, 10, 3, 2, 3, 11, 0, 99, 30, 40, 50])).to eq [3500, 9, 10, 70, 2, 3, 11, 0, 99, 30, 40, 50]
    end
  end
end
