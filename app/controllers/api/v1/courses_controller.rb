class Api::V1::CoursesController < ApplicationController

  def index
    render json: Course.all
  end

  def show
    @course = Course.find(params[:id])
    render json: @course, include: ['assignments', 'forum']
  end
end
