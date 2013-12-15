json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :user_id, :twitter, :linkedin, :github, :startupcommunity, :google_plus, :bio, :title, :image
  json.url user_profile_url(user_profile, format: :json)
end
