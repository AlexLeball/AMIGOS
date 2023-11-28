class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @editable = params[:edit].present? # Controlla se si tratta di una richiesta di modifica
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to my_profile_path, notice: "Impostazioni aggiornate con successo"
    else
      @editable = true # Mantieni la modalità di modifica in caso di errori nella validazione
      render 'show'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birth_date, :city, :description)
    # Aggiungi altri campi che desideri permettere all'utente di aggiornare
  end
end
