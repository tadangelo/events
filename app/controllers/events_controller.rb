class EventsController < ApplicationController
  # before_action :set_event
  def index
    @events = Event.all
  end

  def show
    @events = Event.all
  end

  # def set_event
  #   @event = Event.find(params[:id])
  # end
end
