json.array!(@enrolments) do |enrolment|
  json.extract! enrolment, :name, :email, :phone, :linkedin, :github, :about, :study, :career, :reason, :goals, :follow_up
  json.url enrolment_url(enrolment, format: :json)
end
