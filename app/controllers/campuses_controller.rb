class CampusesController < ApplicationController
  def index
    page = params[:page] || 1
    per_page = 8
    @campuses = Campus.offset((page-1)*per_page)
          .limit(per_page).order(:campus_name).all
  end

  def new
    @campus = Campus.new
  end

  def create
    @campus = Campus.new params[:campus]
    @campus.save
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
    redirect_to @campus
  end

  def destroy
    @campus = Campus.find params[:id]
    @campus.destroy
    redirect_to campuses_url
  end

end 