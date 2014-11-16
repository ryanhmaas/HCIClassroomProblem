class Course < ActiveRecord::Base
  attr_accessor :start_time, :end_time

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      course_hash = row.to_hash # exclude the price field
      course = Course.where(id: course_hash["id"])

      if course.count == 1
        course.first.update_attributes(course_hash)
      else
        Course.create!(course_hash)
      end # end if !product.nil?
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
