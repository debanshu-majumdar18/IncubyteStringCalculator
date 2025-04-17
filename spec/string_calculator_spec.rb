require 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself if only one number is provided" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns the sum of two numbers seperated by comma" do
      expect(StringCalculator.add("3, 4")).to eq(7)
    end

    it "returns the sum of any number of comma seperated numbers" do
      expect(StringCalculator.add("3, 4, 10,15")).to eq(32)
    end

    it "returns the sum when numbers are separated by newlines as well as commas" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
  end
end
