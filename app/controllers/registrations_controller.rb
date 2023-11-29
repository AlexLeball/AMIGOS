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
    @registration.status = "pending"
    if @registration.save
      redirect_to events_path
    else
      render :new
    end
  end

  def index
    @registrations = current_user.registrations
  end

  # def accept
  #   @registration = Registration.find(params[:id])
  #   @registration.status = "accepted"
  #   if @registration.save
  #     redirect_to event_path(@registration.event)
  #   else
  #


private

  def set_registration
    @registration = Registration.find(params[:id])
  end

  def registration_params
    params.require(:registration).permit(:event_id, :status, :user, :event, :introduction)
  end
end
