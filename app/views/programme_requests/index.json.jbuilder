json.array!(@programme_requests) do |programme_request|
  json.extract! programme_request, :name, :email, :follow_up
  json.url programme_request_url(programme_request, format: :json)
end
