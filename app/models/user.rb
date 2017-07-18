class User < ActiveRecord::Base
   validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  # Include default devise modules.
  devise :database_authenticatable,
	     :registerable,
         :recoverable, 
         :rememberable, 
         :trackable, 
         :validatable,
         :omniauthable
  include DeviseTokenAuth::Concerns::User
end

