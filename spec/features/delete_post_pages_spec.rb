require 'rails_helper'

describe "the delete a post process" do
  it "deletes a post", js: true do
    visit new_user_registration_path
    fill_in "Email", with: Faker::Internet.email
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign Up"
    click_on "Create New Post"
    fill_in "Title", with: "Life of a Programmer"
    fill_in "Date", with: "12/12/2015"
    fill_in "Blog", with: "Being a programmer is both challenging and fun!"
    click_on "Create Post"
    click_on "Delete"
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "Post Successfully Deleted!"
  end

  it "it pushes the delete button and then cancels", js: true do
    visit new_user_registration_path
    fill_in "Email", with: Faker::Internet.email
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign Up"
    click_on "Create New Post"
    fill_in "Title", with: "Life of a Programmer"
    fill_in "Date", with: "12/12/2015"
    fill_in "Blog", with: "Being a programmer is both challenging and fun!"
    click_on "Create Post"
    click_on "Delete"
    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content "Life of a Programmer"
  end
end
