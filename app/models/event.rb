class Event < ActiveRecord::Base
	
	def any_events_this_month?
		true
	end
end
