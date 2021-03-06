class Api::V1::AssignmentsController < ApplicationController
  before_action :authenticate_user_from_token!

  def show
    @assignment = Assignment.find(params[:id])
    render json: @assignment, include: ['submissions']
  end

  def create
    render json: Assignment.create(assignment_params)
  end

  private

  def assignment_params
    params.require(:assignment).permit(:name, :description, :start_date, :due_date, :course_id)
  end
  
end
