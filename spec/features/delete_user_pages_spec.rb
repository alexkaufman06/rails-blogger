require 'rails_helper'

describe "the edit user information process" do
  it "edits user information" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Login"
    click_on "Edit Profile"
    fill_in "Email", with: user.email
    fill_in "Password", with: "new_password"
    fill_in "Password confirmation", with: "new_password"
    fill_in "Current password", with: user.password
    click_on "Update"
    expect(page).to have_content "Your account has been updated successfully."
  end

  it "edits user information incorrectly" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Login"
    click_on "Edit Profile"
    fill_in "Email", with: user.email
    fill_in "Password", with: "new_password"
    fill_in "Password confirmation", with: "new_passwords"
    fill_in "Current password", with: user.password
    click_on "Update"
    expect(page).to have_content "Password confirmation doesn't match Password"
  end

  it "deletes the user account", js: true do
    visit new_user_registration_path
    fill_in "Email", with: Faker::Internet.email
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign Up"
    click_on "Edit Profile"
    click_on "Cancel my account"
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "Bye! Your account has been successfully cancelled. We hope to see you again soon."
  end

  it "presses the delete user button and then cancels", js: true do
    visit new_user_registration_path
    fill_in "Email", with: Faker::Internet.email
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign Up"
    click_on "Edit Profile"
    click_on "Cancel my account"
    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content "Edit User"
  end
end
