class Api::V1::UsersController < ApplicationController

  def me
    current_user
  end

end
