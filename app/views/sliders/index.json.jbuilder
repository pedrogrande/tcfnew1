json.array!(@sliders) do |slider|
  json.extract! slider, :id, :title, :content, :image, :button_text, :button_url, :priority
  json.url slider_url(slider, format: :json)
end
