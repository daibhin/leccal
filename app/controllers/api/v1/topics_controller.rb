class Api::V1::TopicsController < ApplicationController

  def create
    render json: Topic.create(topic_params)
  end

  private

  def topic_params
    params.require(:topic).permit(:name, :description, :forum_id)
  end

end
