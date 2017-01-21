class Api::V1::LecturersController < ApplicationController
  def index
    render json: Lecturer.all
  end

  def show
    render json: Lecturer.find(params[:id])
  end
end
