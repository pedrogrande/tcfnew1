json.array!(@enquiries) do |enquiry|
  json.extract! enquiry, :name, :email, :subject, :message
  json.url enquiry_url(enquiry, format: :json)
end
