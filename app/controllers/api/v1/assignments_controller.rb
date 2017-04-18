class Api::V1::AssignmentsController < ApplicationController
  before_action :authenticate_user_from_token!

  def show
    @assignment = Assignment.find(params[:id])
    render json: @assignment, include: ['submissions']
  end

  def create
    render json: Assignment.create(assignment_params)
  end

  def submit
    render json: ::Assignments::Submit.run!(submit_params.to_h)
  end

  private

  def assignment_params
    params.require(:assignment).permit(:name, :description, :start_date, :due_date, :course_id)
  end

  def submit_params
    params.permit(:assignment_id, :user_id, member_ids: [])
  end
end
