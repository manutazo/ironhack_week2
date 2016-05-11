require_relative 'lexiconomitron.rb'

RSpec.describe "lexiconomitron" do

	it "turn give word" do
		expect(lexiconomitron.new.reverse_word(great scott!)).to eq()
	end

	it "eat the t" do
		expect(lexiconomitron.new.eat_to_t(2)).to eq(3)
	end

end
