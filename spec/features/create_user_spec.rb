require 'rails_helper'

RSpec.describe 'Create a user', type: :feature do

  scenario "get new user form and create user" do
    visit "/signup"
    fill_in "Name", :with => "Name"
    click_button "Create my account"

    expect(page).to have_content("Log out")
  end

  scenario "invalid signup user submission results in failure" do
    visit "/signup"
    fill_in "Name", :with => " "
    click_button "Create my account"
    expect(page).to have_content("Sign Up")
  end
end
