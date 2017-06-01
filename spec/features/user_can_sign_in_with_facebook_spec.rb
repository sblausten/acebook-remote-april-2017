require 'rails_helper'
require 'web_helpers'

RSpec.feature "Users",  type: :feature do

  scenario "signs up with facebook", :type => :feature do
    stub_omniauth
    visit root_path
    expect(page).to have_link("Sign Up with Facebook")
    click_button "Sign Up with Facebook"
    page.shoud have_content("Sign Up Successful")
  end

end