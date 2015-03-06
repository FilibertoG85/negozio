class SessioneController < ApplicationController
  def new
  end
  def create
    utente = Utente.authenticate(params[:nickname],params[:password])
    if utente
        session[:utente_id] = utente.id
        redirect_to root_url, :notice => "#{utente.nickname} ti sei loggato con successo"
    else
      flash [:notice] => "nickname o password errata"
      render "new"
    end
  end
  def destroy
  end
end
