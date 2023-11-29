class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @editable = params[:edit].present?
    @registrations = @user.registrations
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to my_profile_path, notice: "Votre profil a été mis à jour"
    else
      @editable = true
      render 'show'
    end
  end

  def favorite_events
    @user = current_user
    @favorite_events = @user.favorite_events
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birth_date, :city, :description)
   end
end
