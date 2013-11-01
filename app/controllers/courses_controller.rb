class CoursesController < ApplicationController
   load_and_authorize_resource except: [:index]

  def index
    page = params[:page] || 1
    per_page = 5
    @courses = Course.paginate(page: page, per_page: per_page).order(:created_at).all
    authorize! :read, @courses
  end

  def new
    @course = Course.new
      @instructors = User.where(role: :instructor)
      @rooms = Room.where(room_name: "room_name")
  end

  def create
    @course = Course.new params[:course]
    @course.instructor_id = params[:instructor_id]
    @course.room_name = params[:room_name]
    @course.save
    redirect_to @course
  end

  def edit
    @course = Course.find params[:id]
  end

  def show
    @course = Course.find params[:id]
  end

  def update
    @course = Course.find params[:id]
    redirect_to @course
  end

  def destroy
    @course = Course.find params[:id]
    @course.destroy
    redirect_to courses_url
  end

end 