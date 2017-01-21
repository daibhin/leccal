class Api::V1::AssignmentsController < ApplicationController

  def show
    render json: Assignment.find(params[:id])
  end

  def create
    render json: Assignment.create(assignment_params)
  end

  private

  def assignment_params
    params.require(:assignment).permit(:name, :description, :start_date, :due_date, :course_id)
  end
end
