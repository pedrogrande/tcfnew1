class CodeClubSchool < ActiveRecord::Base
	has_many :volunteer_schools
	has_many :volunteers, through: :volunteer_schools
	def self.order_by_state
		order(state: :asc)
	end
	def self.order_by_name
		order(name: :asc)
	end
end
