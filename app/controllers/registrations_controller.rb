class RegistrationsController < ApplicationController

  def new
    @registration = Registration.new
  end

  def create
    @event = Event.find(params[:event_id])
    @registration = Registration.new(registration_params)
    @registration.user = current_user
    @registration.event = Event.find(params[:event_id])
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
  #   if @registration.accept
  #     redirect_to my_profile_path(@user)
  #   end
  # end

  # def reject
  #   @registration = Registration.find(params[:id])
  #   if @registration.reject
  #     redirect_to my_profile_path(@user)
  #   end
  # end

private


  def registration_params
    params.require(:registration).permit(:event_id, :status, :user, :event, :introduction)
  end
end
