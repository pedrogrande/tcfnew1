module HomeHelper
	def display_stars(course)
		if course.course_order == 1
			html = '<i class="fa fa-star grey"></i> ' * 2
		elsif course.course_order == 2
			html = '<i class="fa fa-star grey"></i> ' * 3
		else
			html = '<i class="fa fa-star grey"></i> ' * (course.course_order)
		end
	end
end
