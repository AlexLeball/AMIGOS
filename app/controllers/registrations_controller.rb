class RegistrationsController < ApplicationController
  # before_action :set_registration

  def new
    @registration = Registration.new
    @event = Event.find(params[:event_id])
  end

  def create
    @event = Event.find(params[:event_id])
    @registration = Registration.new(registration_params)
    @registration.user = current_user
    @registration.event = Event.find(params[:event_id])
    @registration.status = "en attente"
    if @registration.save
      redirect_to events_path
    else
      render :new
    end
  end

  def index
    @registrations = current_user.registrations
  end

  def accept
    Registration.update(status: "acceptée")
    redirect_to events_path(@event)
  end

  def reject
    Registration.update(status: "rejetée")
    redirect_to events_path(@event)
  end

private

  def set_registration
    @registration = Registration.find(params[:id])
  end

  def registration_params
    params.require(:registration).permit(:event_id, :status, :user, :event, :introduction)
  end

end
