class Api::V1::ProjectsController < ApplicationController
  before_action :authenticate_user_from_token!

  def index
    projects = current_user.projects
    render json: projects
  end

  def create
    render json: current_user.projects.create!(project_params)
  end

  def show
    @project = Project.find(params[:id])
    render json: @project
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
