class FavoritesController < ApplicationController
  def create
    event = Event.find(params[:event_id])

      favorite = Favorite.new(event: event, user: current_user)
      if favorite.save
        redirect_back(fallback_location: root_path, notice: 'Event added to favorites successfully.')
      end
  end

  def destroy
    event = Event.find(params[:event_id])
     Favorite.find(params[:id]).destroy
      redirect_back(fallback_location: root_path, notice: 'Event removed from favorites successfully.')
  end

  def index
    @favorite_events = Favorite.all
  end
end
