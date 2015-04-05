require 'rails_helper'

describe "the delete a post process" do
  it "deletes a post", js: true do
    user = FactoryGirl.create(:user)
    FactoryGirl.create(:post)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Login"
    click_on "Delete"
    expect(page).to have_content "Post Successfully Deleted!"
  end
end
