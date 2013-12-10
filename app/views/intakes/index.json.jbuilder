json.array!(@intakes) do |intake|
  json.extract! intake, :start_date, :end_date, :class_days, :start_time, :finish_time, :location, :notes, :course_id
  json.url intake_url(intake, format: :json)
end
