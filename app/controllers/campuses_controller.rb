class CampusesController < ApplicationController
  def index
    page = params[:page] || 1
    per_page = 5
    @campuses = Campus.paginate(page: page, per_page: per_page).order(:created_at).all
  end

  def new
    @campus = Campus.new
  end

  def create
    @campus = Campus.new params[:campus]
    @campus.save
    flash[:notice] = "Campus Was Created"
    redirect_to @campus
  end

  def edit
    @campus = Campus.find params[:id]
  end

  def show
    @campus = Campus.find params[:id]
  end

  def update
    @campus = Campus.find params[:id]
    @campus.update_attributes params[:campus]
    flash[:notice] = "Campus Was Updated"
    redirect_to @campus
  end

  def destroy
    @campus = Campus.find params[:id]
    @campus.destroy
    flash[:notice] = "Campus Was Destroyed"
    redirect_to campuses_url
  end

end 