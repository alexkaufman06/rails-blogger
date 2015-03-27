require 'rails_helper'

describe "the add a comment process" do
  it "adds a new comment" do
    post = FactoryGirl.create(:post)
    visit root_path
    click_on "zzz"
    click_on "Add a Comment"
    fill_in "Date", with: "12/12/1215"
    fill_in "Comment", with: "Comment!"
    click_on "Create Comment"
    expect(page).to have_content "Comment Successfully Added!"
  end

  it "errors if nothing is entered by the user" do
    post = FactoryGirl.create(:post)
    visit root_path
    click_on "zzz"
    click_on "Add a Comment"
    click_on "Create Comment"
    expect(page).to have_content "Please fix these errors:"
  end
end
