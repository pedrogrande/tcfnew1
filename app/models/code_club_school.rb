class CodeClubSchool < ActiveRecord::Base
	def self.order_by_state
		order(state: :asc)
	end
end
