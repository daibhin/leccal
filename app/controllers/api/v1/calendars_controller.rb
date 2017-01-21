class Api::V1::CalendarsController < ApplicationController

  def index
    render json: ::Calendar::CalendarEvents::Get.run!(params)
  end

end
