class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  protected

  def authenticate_user_from_token!
    authenticated = authenticate_with_http_token do |user_token, options|
      user_email = options[:email].presence
      user = user_email && User.find_by_email(user_email)

      if user && Devise.secure_compare(user.authentication_token, user_token)
        sign_in user, store: false
      else
        render json: 'Invalid authorization.'
      end
    end

    unless authenticated
      render json: 'No authorization provided.'
    end
  end
end
