class RegistrationsController < ApplicationController

  def new
    @registration = Registration.new
    @event = Event.find(params[:event_id])
  end

  def create
    @event = Event.find(params[:event_id])
    @registration = Registration.new(registration_params)
    @registration.user = current_user
    @registration.event = @event
    @registration.status = "pending"

    if @registration.save
      @event.increment!(:participants_count)
      redirect_to confirmation_path
    else
      render :new
    end
  end

  def index
    @registrations = current_user.registrations
  end

  def accept
    Registration.update(status: "accept")
    redirect_to my_profile_path
  end

  def reject
    Registration.update(status: "reject")
    redirect_to my_profile_path
  end

private

  def registration_params
    params.require(:registration).permit(:event_id, :status, :user, :event, :introduction)
  end

end
