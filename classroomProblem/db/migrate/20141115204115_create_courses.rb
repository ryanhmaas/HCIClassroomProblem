class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :lec_exam
      t.string :location
      t.string :meeting_days
      t.datetime :begin_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
