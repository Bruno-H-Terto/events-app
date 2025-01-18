class Api::V1::SchedulesController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @schedules = @event.schedules

    render status: 200, json: @schedules
  end

  def show
    @event = Event.find(params[:event_id])
    @schedule = @event.schedules.find(params[:id])

    render status: 200, json: @schedule
  end
end