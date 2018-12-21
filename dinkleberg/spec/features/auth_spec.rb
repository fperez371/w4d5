 #spec/features/auth_spec.rb
require 'rails_helper'

feature 'the signup process' do
  scenario 'has a new user page' do
    visit new_user_url
    expect(page).to have_content("Sign up")
  end

  feature 'signing up a user' do
    scenario 'shows username on the homepage after signup' do
      sign_up_as('hello_world')
      expect(page).to have_content("hello_world")
    end
  end
end

feature 'logging in' do
  let!(:user) { create(:user) }
  scenario 'shows username on the homepage after login' do
    login_as(user)
    expect(page).to have_content("hello_world")
  end
end

feature 'logging out' do
  let!(:user) { create(:user)}
  scenario 'begins with a logged out state' do
    visit root_url
    expect(page).to have_content("Sign in")
  end
  scenario 'doesn\'t show username on the homepage after logout' do
    login_as(user)
    click_button("Log out")
    expect(page).to_not have_content("hello_world")
  end
end