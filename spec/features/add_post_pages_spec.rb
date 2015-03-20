require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit root_path
    click_on "Create New Post"
    fill_in "Title", with: "Life of a Programmer"
    fill_in "Date", with: "12/12/2015"
    fill_in "Blog", with: "Being a programmer is both challenging and fun!"
    click_on "Create Post"
    expect(page).to have_content "Post Successfully Added!"
  end
end
