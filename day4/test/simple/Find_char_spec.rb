
require "rspec"

class ReplaceChar 
	
	def find_string_in_string(char, string)

		if char.class != String
			"Invalid input"
		elsif string.class != String
			"Can´t convert fixnum into string"
		end
		else
			if char == "*"
				string.gsub("*", "@")
			else
				string.gsub(char, "*")
			end
	    end

	end
end