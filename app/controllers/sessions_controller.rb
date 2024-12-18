class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:username] == 'marco' && params[:password] == 'pipistrello'
      session[:authenticated] = true
      redirect_to home_path, notice: 'Login riuscito.'
    else
      flash.now[:alert] = 'Credenziali non valide.'
      render :new
    end
  end

  def destroy
    session[:authenticated] = nil
    redirect_to root_path, notice: 'Logout effettuato.'
  end
end