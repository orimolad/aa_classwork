require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}" 
 
  describe 'User Validations' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:session_token) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
    
    subject(:Kevin) do 
      User.create!(
        username: 'Kevin',
        email: 'Kev@aa.io',
        password: 'password'
      )
    end
    
    it { should validate_uniqueness_of(:session_token) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_uniqueness_of(:username) }
    
    
  end
  #we want to write a User.find_by_credentials(username, password)
  
  #takes two arguments
  
  #queries the database for matching username

  #checks if queried user's password matches argument password

  #return user if match, else return nil

  describe '::find_by_credentials' do

    #user = User.create
    let!(:user) { 
      User.create!(
        username: 'Kevin',
        email: 'Kev@aa.io',
        password: 'password',

      ) }

      context 'with valid params' do
        it 'returns a user with the correct username' do 
          expect(User.find_by_credentials('Kevin', 'password')).to eq(user) 
        end
      end

      context 'with invalid params' do
        it 'returns nil' do
          expect(User.find_by_credentials('Kevin', '')).to be_nil 
        end
      end
  end

end
