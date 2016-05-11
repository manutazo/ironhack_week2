require_relative "Find_char.rb"

RSpec.describe "CharacterReplacer" do 
	#context "when char and string are both strings" do
		
		let(:replace) {ReplaceChar.new.find_string_in_string("","")}
		
		it "should work" do
		  expect(replace.find_string_in_string("a", "caracola")).to eq("c*r*col*")
		end

		it "should return @ when char == *" do
			expect(replace.find_string_in_string("*", "2 * 3")).to eq("2 @ 3")
		end
	#end


	let (:replace) {ReplaceChar.new}

	it "should return a string when array passed as parameter" do
		expect(replace.find_string_in_string([], "caracola")).to eq("Invalid input")
	end
	
	it "should return an error if string is Fixnum" do
		expect{ replace.find_string_in_string("", 0) }.to raise_error(RuntimeError)
	end
end