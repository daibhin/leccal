class Api::V1::AssignmentsController < ApplicationController
  before_action :authenticate_user_from_token!

  def show
    render json: Assignment.find(params[:id])
  end

  def create
    render json: Assignment.create(assignment_params)
  end

  def submit
    permitted = params.permit(:assignment_id, :user_id)
    render json: ::Assignments::Submit.run!(permitted.to_h)
  end

  private

  def assignment_params
    params.require(:assignment).permit(:name, :description, :start_date, :due_date, :course_id)
  end
end
