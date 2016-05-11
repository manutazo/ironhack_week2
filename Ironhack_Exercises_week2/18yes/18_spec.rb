require File.expand_path '../spec_helper.rb', __FILE__

RSpec.describe '18 app' do

it "+18 access" do 
		get '/name/18'
		time_ago = Time.now - 18 * 13996800000
		expect(last_response.body).to include(time_ago.to_s)
	end
end