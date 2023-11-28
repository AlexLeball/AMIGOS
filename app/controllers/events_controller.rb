class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] # Modifica questa linea in base alla tua autenticazione

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    # inizialize the user_id with the current_user.id
    @event.user_id = current_user.id if current_user

    if @event.save
      redirect_to @event, notice: "Event created successfully."
    else
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :address, :city, :short_description, :long_description, :event_date, :limit_participants, :category_id)
  end
end
