# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__

RSpec.describe do
  it describe 'do algo' do
    get '../views/create_profile'
    expect(@name).to eq('juan')
  end
end
