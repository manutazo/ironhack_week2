require_relative 'simple_string.rb'

RSpec.describe "stringCalculator" do

	it "returns the number x number" do
		expect(StringCalculator.new.add(5)).to eq(25)
	end

	it "method number_plus_1 returns the number + 1" do
		expect(StringCalculator.new.number_plus_1(2)).to eq(3)
	end

end
