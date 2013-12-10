json.array!(@posts) do |post|
  json.extract! post, :title, :lead, :content, :image, :publish, :slug
  json.url post_url(post, format: :json)
end
