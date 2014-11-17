class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :lec_exam
      t.string :location
      t.string :meeting_days
      t.time :begin_time
      t.time :end_time
      t.string :status
      t.timestamps
    end
  end
end
