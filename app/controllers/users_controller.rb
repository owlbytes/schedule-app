class UsersController < ApplicationController
  def index
    page = params[:page] || 1
    per_page = 10
    @users = User.paginate(page: page, per_page: per_page).order(:created_at).all
  end

  def flaged_students
    page = params[:page] || 1
    per_page = 20
    @users = User.where(flagged: true).paginate(page: page, per_page: per_page).order(:created_at).all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    @user.save
    UserMailer.registration_confirmation(@user).deliver
    flash[:notice] = "User Was Created"
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
    @user.update_attributes params[:user]
    flash[:notice] = "User Was Updated"
    redirect_to @user
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    flash[:notice] = "User Was Destroyed"
    redirect_to users_url
  end

  def flag
    @user = User.find(params[:user_id])
    @user.flagged = true
    @user.save
    flash[:notice] = 'User Was Flagged!'
    render :show
  end

  def flagged
    @users = User.where(:flagged => true).all 
    render :index
  end 

end 