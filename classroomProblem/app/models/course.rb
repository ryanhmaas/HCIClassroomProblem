class Course < ActiveRecord::Base
	attr_accessor :ID, :type, :location, :meeting_days, :start_time, :stop_time
end
