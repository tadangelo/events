class EventsController < ApplicationController
  def index
  end

  def show
    @event = Event.find(params[:id])
    @location = "2912+Executive+Pkwy,Lehi,UT"
  end

end
