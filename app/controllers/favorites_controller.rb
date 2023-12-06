class FavoritesController < ApplicationController

  def create
    event = Event.find(params[:event_id])
    favorite = Favorite.new(event: event, user: current_user)
      if favorite.save
        redirect_back(fallback_location: root_path, notice: 'Evénement ajouté aux favoris')
      end
  end

  def destroy
    Event.find(params[:event_id])
    Favorite.find(params[:id]).destroy
    redirect_back(fallback_location: root_path, notice: 'Evénement supprimé des favoris')
  end

  def index
    @favorite_events = Favorite.all
  end
end
