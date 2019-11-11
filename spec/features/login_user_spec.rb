# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Login a user', type: :feature do
  subject { User.new(name: 'Name') }
  before { subject.save }

  scenario 'get new user form and create user' do
    visit '/login'
    fill_in 'Name', with: 'Name'

    click_button 'Login'

    expect(page).to have_content('Log out')
  end

  scenario 'invalid signup user submission results in failure' do
    visit '/login'
    fill_in 'Name', with: ' '
    click_button 'Login'
    expect(page).to have_content('Wrong Name')
  end
end
