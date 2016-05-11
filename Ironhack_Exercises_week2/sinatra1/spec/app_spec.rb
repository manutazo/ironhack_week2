require File.expand_path '../spec_helper.rb', __FILE__

RSpec.describe 'my sinatra app' do

	it "says hello" do 
		get '/hours/ago/7'
		time_ago = Time.now - 7 * 3600
		expect(last_response.body).to include(time_age.to_s)
	end
end
