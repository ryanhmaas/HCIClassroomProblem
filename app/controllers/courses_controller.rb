class CoursesController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]


  def current_day
    day = DateTime.now
    day += 1
    day = day.strftime("%A")
    day[0]
    return day
  end

  def index
    #conditions needed: meeting_day == current_day, unique room instances, lecture only
    #will have to match the meeting_day since it has MWF
    @courses = Course.all
    day = DateTime.now
    day += 1
    day = day.strftime("%A")
    day = day[0]
    #@courses = Course.where('meeting_days LIKE (?)', "%#{day}%").group(:location)
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


  def is_open?
    time = Time.now
    
  end

  def course_params
      params.require(:course).permit(:lec_exam, :location, :begin_time, :end_time, :status)
  end

end
