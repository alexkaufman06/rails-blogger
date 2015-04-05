require 'rails_helper'

  # SPECS BELOW PASS BUT WERE TAKEN OUT TO AVOID SENDING MULTIPLE TEXT MESSAGES
  # ----------------------------------------------------------------------
# describe "the add a comment process" do
#   it "adds a new comment", js: true do
#     post = FactoryGirl.create(:post)
#     visit root_path
#     click_on "zzz"
#     save_screenshot('screen.png')
#     click_on "Add a Comment"
#     fill_in "Date", with: "12/12/1215"
#     fill_in "Comment", with: "Comment Successfully Added!"
#     click_on "Create Comment"
#     expect(page).to have_content "Comment Successfully Added!"
#   end
#
#   it "errors if nothing is entered by the user" do
#     post = FactoryGirl.create(:post)
#     visit root_path
#     click_on "zzz"
#     click_on "Add a Comment"
#     click_on "Create Comment"
#     expect(page).to have_content "Please fix these errors:"
#   end
# end

# Couldn't find a good way to add a comment to a post with Factory Girl
# I tried post.comments.new(FactoryGirlComment) and other combinations

# describe "the add and delete a comment process" do
#   it "deletes a comment", js: true do
#     user = FactoryGirl.create(:user)
#     post = FactoryGirl.create(:post)
#     visit root_path
#     click_on "Login"
#     fill_in "Email", with: user.email
#     fill_in "Password", with: user.password
#     click_button "Login"
#     click_on 'zzz'
#     click_on 'Add a Comment'
#     fill_in "Date", with: "12/12/1215"
#     fill_in "Comment", with: "Comment Successfully Added!"
#     click_on "Create Comment"
#     click_on "Delete"
#     expect(page).to have_content "Comment Successfully Deleted!"
#   end
# end
#
# describe "the add and edit a comment process" do
#   it "edits a comment", js: true do
#     user = FactoryGirl.create(:user)
#     post = FactoryGirl.create(:post)
#     visit root_path
#     click_on "Login"
#     fill_in "Email", with: user.email
#     fill_in "Password", with: user.password
#     click_button "Login"
#     click_on 'zzz'
#     click_on 'Add a Comment'
#     fill_in "Date", with: "12/12/1215"
#     fill_in "Comment", with: "Comment Successfully Added!"
#     click_on "Create Comment"
#     click_on "Edit"
#     fill_in "Date", with: '12/12/1236'
#     fill_in "Comment", with: 'Insightful Comment'
#     click_on "Update Comment"
#     expect(page).to have_content "Comment Successfully Updated!"
#   end
# end
