class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @events = if params[:query].present?
      Event.search_by_category_city_and_name(params[:query]).order(event_date: :asc)
    else
      Event.all.order(event_date: :asc)
    end
    @categories = Category.all
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def categories
    @categories = Category.all
    render json: @categories.pluck(:name)
  end

  def show
    @event = Event.find(params[:id])
    @markers = Event.geocoded.map
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

  def edit
    @event = Event.find(params[:id])
    if current_user != @event.user
      redirect_to @event, alert: "You can't edit this event"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if current_user == @event.user
      @event.destroy
      redirect_to events_path, notice: "Event deleted successfully."
    end
  end

  def update
    @event = Event.find(params[:id])
    if current_user == @event.user
      if @event.update(event_params)
        redirect_to @event, notice: "Event updated successfully."
      else
        render 'edit'
      end
    else
      redirect_to @event, alert: "You can't edit this event because you are not the owner of the event."
    end
  end


  private

  def event_params
    params.require(:event).permit(:event_id, :title, :address, :city, :short_description, :long_description, :event_date, :limit_participants, :category_id)
  end
end
