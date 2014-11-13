class CoursesController < ApplicationController

  def new
  	@courses = Course.new
  end

  def create
  	@course = Course.create(:ID, :type, :location, :meeting_days, :start_time, :stop_time)
  end

  def index
  	@courses = Course.all
  end
end
