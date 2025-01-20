class EventsController < ApplicationController
  def speakers
    if ScheduleItem.find_by!(speaker_email: params[:email])
      render status: 200, json: {}
    else
      render stauts: 404, json: {}
    end
  end
end