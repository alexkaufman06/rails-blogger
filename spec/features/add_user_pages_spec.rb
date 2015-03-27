require 'rails_helper'

describe "the add a user process" do
  it "signs up a new user" do
    visit new_user_registration_path
    fill_in "Email", with: Faker::Internet.email
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign Up"
    expect(page).to have_content "Welcome! You have signed up successfully."
  end

  it "errors if nothing is entered" do
    visit root_path
    click_on "Login"
    click_on "Sign Up"
    click_button "Sign Up"
    expect(page).to have_content "Email can't be blank"
  end
end
