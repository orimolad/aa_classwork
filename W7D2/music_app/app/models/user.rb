# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  session_token   :string           not null
#  password_digest :string           not null
#  email           :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    after_initialize :ensure_session_token
    validates :email, uniqueness: true, presence: true
    validates :password, allow_nil: true
    
    attr_reader :password

    def self.find_by_credentials(email, password)
        user = User.find_by(email: email)
        if user
            if user.is_password?(password)
                user
            else
                nil
            end
        else
            nil
        end
    end



    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= SecureRandom::urlsafe_base64
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password(self.password_digest).is_password?(password)
    end


end
