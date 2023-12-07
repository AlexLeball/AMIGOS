class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @events = Event.all
    @events =
      if params[:query].present?
        Event.search_by_category_city_and_name(params[:query]).order(event_date: :asc)
      else
        Event.all.order(event_date: :asc)
      end
    @categories = Category.all
  end

  def categories
    @categories = Category.all
    render json: @categories.pluck(:name)
  end

  def show
    @markers = []
    @event = Event.find(params[:id])
    @events = Event.all
    @events.geocoded.map do |event|
      if event == @event
        marker = {
          lat: event.latitude,
          lng: event.longitude
        }
        @markers << marker
      end
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    # inizialize the user_id with the current_user.id
    @event.user_id = current_user.id if current_user

    if @event.save
      redirect_to events_path, notice: "Evénement créé avec succès"
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
    if current_user != @event.user
      redirect_to @event, alert: "Impossible d'éditer cet événement"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if current_user == @event.user
      @event.destroy
      redirect_to events_path, notice: "Evénement supprimé avec succès"
    end
  end

  def update
    @event = Event.find(params[:id])
    if current_user == @event.user
      if @event.update(event_params)
        redirect_to @event, notice: "Evénement mis à jour avec succès."
      else
        render 'edit'
      end
    else
      redirect_to @event, alert: "Vous ne pouvez pas éditer cet événement car vous n'êtes pas son créateur"
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :address, :city, :short_description, :long_description, :event_date, :limit_participants, :category_id, :photo)
  end
end
