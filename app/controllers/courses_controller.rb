class CoursesController < ApplicationController

  before_action :authenticate, except: [:index, :show]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to @course
    else
      render:edit
    end
  end

  def new
    @course = Course.new
    @user = User.find(params[:user_id])
  end

  def create
    @course = Course.new(course_params)
    @course.user_id = params[:user_id]
    if @course.save
      redirect_to @course.user, notice: 'Course was successfully created.'
    else
      render:new
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

  private
  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :day_night)
  end




end
