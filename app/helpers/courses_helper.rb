module CoursesHelper
	def intake_locations(course)
		course.intakes.map{|f| f.location}.to_sentence
	end
end
