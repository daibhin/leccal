class Lecturer < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
          # :confirmable
  include DeviseTokenAuth::Concerns::User

  before_save :ensure_authentication_token

  def ensure_authentication_token
   if authentication_token.blank?
     self.authentication_token = generate_authentication_token
   end
  end

  private

 def generate_authentication_token
   loop do
     token = Devise.friendly_token
     break token unless Lecturer.where(authentication_token: token).first
   end
 end
end
