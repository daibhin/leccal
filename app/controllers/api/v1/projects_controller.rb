class Api::V1::ProjectsController < ApplicationController
  before_action :authenticate_user_from_token!

  def index
    binding.pry
    projects = current_user.projects
    render json: projects
  end

  def show
    @course = Project.find(params[:id])
    render json: @course, include: ['assignments', 'forum.topics.posts']
  end

end
