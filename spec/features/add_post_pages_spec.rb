require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Login"
    click_on "Create New Post"
    fill_in "Title", with: "Life of a Programmer"
    fill_in "Date", with: "12/12/2015"
    fill_in "Blog", with: "Being a programmer is both challenging and fun!"
    click_on "Create Post"
    expect(page).to have_content "Post Successfully Added!"
  end

  it "errors if nothing is entered by the user" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Login"
    click_on "Create New Post"
    click_on "Create Post"
    expect(page).to have_content "There was a problem creating your post"
  end
end
