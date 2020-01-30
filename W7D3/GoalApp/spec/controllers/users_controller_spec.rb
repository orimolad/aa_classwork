require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'GET #new' do
    it "should get the new user page" do 
      get :new
      expect(response).to render_template(:new)
    end
  end
  describe 'POST #create' do
    let(:user_params) do
      { user: {
          username: 'Kevin',
          password: 'password',
          email: 'Kevin@aa.io'
        }
      }
    end
    context 'with valid params' do 
      it "should log in user" do 
        post :create, params: user_params
        user = User.find_by(username: 'Kevin')
        expect(session[:session_token]).to eq(user.session_token)
      end
      it "should redirect user to user's page" do 
        post :create, params: user_params
        user = User.find_by(username: 'Kevin')
        expect(response).to redirect_to(user_url(user))
      end
    end

    context 'with invalid params' do 
      it "should redirect to login page" do
        post :create, params: {user: {username: 'John', password: '', email: 'hunterjohn@aa.io'}}
        expect(response).to redirect_to new_user_url
        expect(flash[:errors]).to be_present
        # expect(response).to render_template(:new)
        # expect(flash.now[:errors]).to be_present
      end
    end


  end



end
