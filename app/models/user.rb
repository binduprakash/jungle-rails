class User < ActiveRecord::Base
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 8 }
    has_secure_password

    def self.authenticate_with_credentials(email, password)
        user = User.find_by_email(email)
        if user && user.authenticate(password)
            user
        end
    end
end
