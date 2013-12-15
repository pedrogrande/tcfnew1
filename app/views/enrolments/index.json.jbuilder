json.array!(@enrolments) do |enrolment|
  json.extract! enrolment, :name, :email, :phone, :referrer
  json.url enrolment_url(enrolment, format: :json)
end
