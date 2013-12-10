json.array!(@events) do |event|
  json.extract! event, :title, :lead, :description, :date, :start_time, :finish_time, :publish, :recurring, :recurring_interval, :recurring_number
  json.url event_url(event, format: :json)
end
