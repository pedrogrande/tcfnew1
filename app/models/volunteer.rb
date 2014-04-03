class Volunteer < ActiveRecord::Base
	has_many :volunteer_schools
	has_many :code_club_schools, through: :volunteer_schools
	validates :first_name, :last_name, :phone, :email, :address, :suburb, :postcode, :message, presence: true
end
