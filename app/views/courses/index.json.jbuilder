json.array!(@courses) do |course|
  json.extract! course, :title, :lead, :intro, :description, :designed_for, :price, :duration
  json.url course_url(course, format: :json)
end
