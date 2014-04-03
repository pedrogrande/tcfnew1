json.array!(@volunteers) do |volunteer|
  json.extract! volunteer, :id, :first_name, :last_name, :email, :phone, :address, :suburb, :state, :postcode, :preferred_schools, :message
  json.url volunteer_url(volunteer, format: :json)
end
