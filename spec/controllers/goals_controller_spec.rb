require 'rails_helper'

RSpec.describe GoalsController, :type => :controller do
  #integrate_views

  # describe 'anonymous user' do
  #   before :each do
  #     login_with nil
  #   end
  # end
  # describe "CREATE" do
  #   it "should redirect to index with a notice on successful save" do
  #     Goal.any_instance.stubs(:valid?).return(true)
  #     post :create
  #     flash[:notice].should_not be_nil
  #     response.should redirect_to(goal_path)
  #   end
  #
  #   it "should re-render new template on failed save" do
  #
  #   end
  # end

  # describe "GET index" do
  #   it "renders the index template" do
  #     get :index
  #     expect(response).to render_template("index")
  #   end
  #
  #   it 'should be redirected to signin in attempt to create goal' do
  #     get :new
  #     expect(response).to redirect_to(new_user_session_path)
  #   end
  #
  #   it 'should let a user create a new goal' do
  #
  #     get :new
  #     expect(response).to render_template(:new)
  #   end
  # end
end
