class Admin::UsersController < ApplicationController
  before_action :authenticate_admin

  layout 'admin'

  def index
    @users = User.all
    render "admin/users"
  end

  def new
    @user = User.new
    @users = User.all
    render "admin/users"
  end

  def create
    @user = User.new(user_params)
    @users = User.all
    if @user.save
      redirect_to admin_root_path, notice: 'Utente creato con successo.'
    else
      render "admin/users"
    end
  end

  def edit
    @user = User.find(params[:id])
    @users = User.all
    render "admin/users"
  end

  def update
    @user = User.find(params[:id])
    @users = User.all
    if @user.update(user_params)
      redirect_to admin_root_path, notice: 'Utente aggiornato con successo.'
    else
      render "admin/users"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_root_path, notice: 'Utente eliminato con successo.'
  end

  private

  def authenticate_admin
    redirect_to root_path, alert: 'Accesso non autorizzato.' unless session[:authenticated]
  end

  def user_params
    params.require(:user).permit(:email, :password, :role)
  end
end