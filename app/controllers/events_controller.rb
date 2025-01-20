class EventsController < ApplicationController
  def speakers
    if ScheduleItem.find_by!(speaker_email: params[:email])
      return render status: 200, json: { response: 'ok' }
    end
  end
end