require 'spec_helper'
require 'rails_helper'

feature 'the signup process' do
  scenario 'has a new user page' do
    visit new_user_url
    expect(page).to have_content 'Sign Up'
  end
  feature 'signing up a user' do
    before(:each) do
      visit new_user_url
      fill_in 'username', with: 'testing_username'
      fill_in 'password', with: 'biscuits'
      click_on 'Create User'
    end

    scenario 'shows user\'s page after signup' do
      expect(page).to have_content 'Welcome'
    end

  end


  feature 'logging in' do
    scenario 'shows username on the homepage after login' do
      expect(page).to have_content 'testing_username'
    end

  end

  feature 'logging out' do
    scenario 'begins with a logged out state' do
      expect(page).to have_content "Sign In"
    end

    scenario 'doesn\'t show username on the homepage after logout' do
      expect(page).to_not have_content "testing_username"
    end
  end

end