require 'rails_helper'

feature 'AddNewGoals', :type => :feature do
  it 'should require the user log in before creating goal' do
    password = '12345678'
    u = create(:user, password: password, password_confirmation:password)

    visit new_goal_path

    within '#new_user' do
      fill_in 'user_email', with: u.email
      fill_in 'user_password', with: password
    end

    click_button 'Log in'

    within '#new_goal' do
      fill_in "goal_name", with: "My Goal"
    end

    click_link_or_button 'Create Goal'

    expect(Goal.count).to eq(1)
    expect(Goal.first.name).to eq("My Goal")
  end
end
