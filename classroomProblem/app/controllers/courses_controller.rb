class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def import
    Course.import(params[:file])
    redirect_to root_url, notice: "Courses imported."
  end

  

end
