class FavoritesController < ApplicationController
  def create
    event = Event.find(params[:event_id])

    if current_user.favorites.exclude?(event)
      favorite = current_user.favorites.new(event: event)

      if favorite.save
        redirect_back(fallback_location: root_path, notice: 'Event added to favorites successfully.')
      else
        redirect_back(fallback_location: root_path, alert: 'There was an error adding the event to favorites.')
      end
    else
      redirect_back(fallback_location: root_path, alert: 'Event is already in favorites.')
    end
  end

  def destroy
    event = Event.find(params[:id])
    if current_user.favorites.include?(event)
      current_user.favorites.delete(event)
      redirect_back(fallback_location: root_path, notice: 'Event removed from favorites successfully.')
    else
      redirect_back(fallback_location: root_path, alert: 'Event is not in favorites.')
    end
  end

  def index
    @favorite_events = Favorite.all
  end
end
