class UsersController < ApplicationController
  def index
    page = params[:page] || 1
    per_page = 5
    @users = User.paginate(page: page, per_page: per_page).order(:created_at).all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    @user.save
    UserMailer.registration_confirmation(@user).deliver
    redirect_to @user
  end

  def edit
    @user = User.find params[:id]
  end

  def show
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    redirect_to @user
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_url
  end

end 