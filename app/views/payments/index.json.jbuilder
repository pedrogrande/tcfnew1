json.array!(@payments) do |payment|
  json.extract! payment, :id, :enrolment_id, :payment_amount
  json.url payment_url(payment, format: :json)
end
