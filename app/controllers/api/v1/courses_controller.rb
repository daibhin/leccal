class Api::V1::CoursesController < ApplicationController
  before_filter :authenticate_user_from_token!

  def index
    render json: Course.all
  end

  def show
    @course = Course.find(params[:id])
    render json: @course, include: ['assignments', 'forum.topics.posts']
  end
end
