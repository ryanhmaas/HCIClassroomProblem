class CoursesController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]


  def index
    @courses = Course.all
  end

  def import
    Course.import(params[:file])
    redirect_to root_url, notice: "Courses imported."
  end


  def edit
    @course = Course.find(params[:id])
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @course}
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end


  def show
  end

private
  def set_room
      @course = Course.find(params[:id])
  end

  def course_params
      params.require(:course).permit(:lec_exam, :location, :start_time, :end_time, :status)
  end

end
