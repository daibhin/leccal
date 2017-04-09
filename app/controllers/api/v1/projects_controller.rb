class Api::V1::ProjectsController < ApplicationController
  before_action :authenticate_user_from_token!

  def index
    projects = current_user.projects
    render json: projects
  end

  def show
    @project = Project.find(params[:id])
    render json: @project
  end

end
