require 'csv'

namespace :data do

  desc "Imports data from course_listing.csv"
  task :import_csv => :environment do
  	CSV.foreach("db/course_listing.csv") do |row|
      c = Course.create(
        :ID => row[0],
        :type => row[1],
        :location => row[2],
  			:meeting_days => row[3],
  			:start_time => row[4],
  			:stop_time => row[5],
  			)
      c.save!
      #They may not be saving to the database
  	end
  end

end
