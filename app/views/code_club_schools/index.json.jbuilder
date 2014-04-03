json.array!(@code_club_schools) do |code_club_school|
  json.extract! code_club_school, :id, :name, :address, :suburb, :state, :postcode
  json.url code_club_school_url(code_club_school, format: :json)
end
