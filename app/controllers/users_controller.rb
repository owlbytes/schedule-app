class UsersController < ApplicationController
  def index
    page = params[:page] || 1
    per_page = 5
    @Users = User.offset((page-1)*per_page)
          .limit(per_page).order(:first_name).all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    @user.save
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