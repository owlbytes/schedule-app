class RoomsController < ApplicationController
  def index
    page = params[:page] || 1
    per_page = 5
    @rooms = Room.paginate(page: page, per_page: per_page).order(:created_at).all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new params[:room]
    @room.save
    redirect_to @room
  end

  def edit
    @room = Room.find params[:id]
  end

  def show
    @room = Room.find params[:id]
  end

  def update
    @room = Room.find params[:id]
    redirect_to @room
  end

  def destroy
    @room = Room.find params[:id]
    @room.destroy
    redirect_to rooms_url
  end

end 