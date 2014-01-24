json.array!(@student_sites) do |student_site|
  json.extract! student_site, :id, :name, :url, :image, :screenshot
  json.url student_site_url(student_site, format: :json)
end
