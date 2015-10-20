# require 'rails_helper'
#
# feature 'EditExistingGoal', :type => :feature do
#   background do
#     @goal = Goal.create!(:name => 'My Goal')
#   end
#
#   it 'should require the user log in before editing goal' do
#     password = '12345678'
#     u = create(:user, password: password, password_confirmation:password)
#
#     visit edit_goal_path(@goal)
#
#     within '#new_user' do
#       fill_in 'user_email', with: u.email
#       fill_in 'user_password', with: password
#     end
#
#     click_button 'Log in'
#
#     within '#edit_goal' do
#       fill_in "goal_name", with: "My New Goal"
#     end
#
#     click_link_or_button 'Update Goal'
#
#     expect(Goal.count).to eq(1)
#     expect(Goal.first.name).to eq("My Goal")
#   end
# end
