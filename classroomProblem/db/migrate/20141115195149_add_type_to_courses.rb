class AddTypeToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :type, :string
    add_column :courses, :location, :string
    add_column :courses, :meeting_days, :string
    add_column :courses, :start_time, :datetime
    add_column :courses, :end_time, :datetime
  end
end
