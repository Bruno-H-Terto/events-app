class EventsController < ApplicationController
  def schedule_items
      result =  ScheduleItem.where(speaker_email: params[:email]).joins(:schedule).where("schedules.event_id = ?", params[:event_id])
      render status: 200, json: { schedule_items: result }
  end
  def speakers
    if ScheduleItem.find_by!(speaker_email: params[:email])
      render status: 200, json: { response: "ok" }
    end
  end

  def speaker_events
    events = Event.joins(schedules: :schedule_items).where(schedule_items: { speaker_email: params[:email] }).distinct
    render status: 200, json: { response: events }
  end
end
