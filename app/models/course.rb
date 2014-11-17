class Course < ActiveRecord::Base
  attr_accessor :start_time, :end_time

  require 'csv'

  def self.import(file)

    CSV.foreach(file.path, :headers => true) do |row|

      #course_hash = row.to_hash # exclude the price field
      #course = Course.where(id: course_hash["id"])
      Course.create!(row.to_hash)
    end # end CSV.foreach
  end # end self.import(file)


  #def is_open?
  #time = Time.now
  #  if time > Course.start_time && time < Course.end_time
  #    return true
  #  else
  #    return false
  #  end
  #end
  

end
