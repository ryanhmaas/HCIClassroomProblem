class CoursesController < ApplicationController

  def new
  	@course = Course.new
  end

  def create
  	@course = Course.create(course_params)
  end

  def index
  	@courses = Course.all
  end

private
  def course_params
    params.require(:course).permit(:ID, :type, :location, :meeting_days, :start_time, :stop_time)
  end

end
