require 'rails_helper'
#
# RSpec.describe GoalsController, :type => :controller do
#   describe 'anonymous user' do
#     before :each do
#       login_with nil
#     end
#
#     it 'should be redirected to signin in attempt to create goal' do
#       get :new
#       expect(response).to redirect_to(new_user_session_path)
#     end
#
#     it 'should let a user create a new goal' do
#       login_with create(:user)
#       get :new
#       expect(response).to render_template(:new)
#     end
#   end
# end
