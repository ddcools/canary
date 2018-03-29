require 'rails_helper'

RSpec.describe Rider, type: :model do

  context "When Testing rider model" do
  	
  	it "should return MY NAME when we call print method" do
  		rider = Rider.new
  		expect(rider.print_name).to eq "MY NAME"
  	end
  	
  end
end
