class EventsController < ApplicationController
  # before_action :set_event
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @location = "2912+Executive+Pkwy,Lehi,UT"
  end
end
