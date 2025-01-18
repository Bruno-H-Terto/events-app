class Api::V1::ScheduleItemsController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @schedules = @event.schedules.find(params[:schedule_id])
    @schedule_items = @schedules.schedule_items

    render status: 200, json: @schedule_items
  end

  def show
    @event = Event.find(params[:event_id])
    @schedules = @event.schedules.find(params[:schedule_id])
    @schedule_item = @schedules.schedule_items.find(params[:id])

    render status: 200, json: @schedule_item
  end
end