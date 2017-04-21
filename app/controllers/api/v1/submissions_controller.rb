class Api::V1::SubmissionsController < ApplicationController
  before_action :authenticate_user_from_token!

  def create
    binding.pry
    render json: ::Assignments::Submit.run!(submit_params.to_h)
  end

  private

  def submit_params
    params.require(:submission).permit(:assignment_id, :submitter_id, member_ids: [])
  end
end
