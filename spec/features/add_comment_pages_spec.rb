require 'rails_helper'

describe "the add a comment process" do
  it "adds a new comment" do
    post = Post.create(title: "post", date: "12/12/1212", blog: "blog")
    visit root_path
    click_on "post"
    click_on "Add a Comment"
    fill_in "Date", with: "12/12/1215"
    fill_in "Comment", with: "Comment!"
    click_on "Create Comment"
    expect(page).to have_content "Comment Successfully Added!"
  end

  it "errors if nothing is entered by the user" do
    post = Post.create(title: "post", date: "12/12/1212", blog: "blog")
    visit root_path
    click_on "post"
    click_on "Add a Comment"
    fill_in "Date", with: ""
    fill_in "Comment", with: "Comment!"
    click_on "Create Comment"
    expect(page).to have_content "Please fix these errors:"
  end
end
