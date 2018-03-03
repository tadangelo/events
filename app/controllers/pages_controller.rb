class PagesController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @events = Event.where(user_id: current_user.id)
  end
end
