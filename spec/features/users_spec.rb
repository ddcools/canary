require 'rails_helper'

describe "the login process" do

  before :each do
    # User.make(:email => 'canary_admin@yopmail.com', :password => 'admin123*')
  end

  it "signs me in" do
    visit '/login' 
    fill_in 'email', with: 'rider_boss@yopmail.com'
    fill_in 'password', with: 'admin123*'
    click_button 'Login'
    expect(page.status_code).to eq(200)
    # expect(page).to have_content 'Success'
  end

end
