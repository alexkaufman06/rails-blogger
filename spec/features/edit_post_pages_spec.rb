require 'rails_helper'

describe "the edit a post process" do
  it "edits a post" do
    user = FactoryGirl.create(:user)
    # post = FactoryGirl.create(:post)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Login"
    click_on "Edit"
    fill_in "Title", with: "New Title"
    fill_in "Date", with: "12/12/1212"
    fill_in "Blog", with: "BLOG!"
    click_button "Update Post"
    expect(page).to have_content "Post Successfully Updated!"
  end

  it "errors when nothing is entered to edit" do
    user = FactoryGirl.create(:user)
    # post = FactoryGirl.create(:post)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Login"
    click_on "Edit"
    click_button "Update Post"
    expect(page).to have_content "There was a problem updating your post, please try again."
  end
end
