class RsvpsController < ApplicationController
  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.create!(user_id: current_user.id, event_id: params[:event_id])

    respond_to do |format|
      if @rsvp.save
        format.html { redirect_to root_url }
      end
    end
  end

  def destroy

  end

  private


end