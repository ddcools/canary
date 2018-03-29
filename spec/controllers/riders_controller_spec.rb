require 'rails_helper'

RSpec.describe RidersController, type: :controller do

	 context "when testing RidersController class" do
	 	it "should return status 200 when we call new method" do
	 		get :new
	 		expect(response).to have_http_status(200)
	 	end
	 end

	 describe "GET index" do
	 	it "renders index template" do
	 		get :index
	 		expect(response).to render_template("index")
	 	end
	 end
end
