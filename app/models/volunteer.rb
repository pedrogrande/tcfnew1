class Volunteer < ActiveRecord::Base
	validates :first_name, :last_name, :phone, :email, :address, :suburb, :postcode, :message, presence: true
end
