json.array!(@courses) do |course|
  json.extract! course, :id, :lec_exam, :location, :meeting_days, :begin_time, :end_time, :status
  json.url course_url(course, format: :json)
end
