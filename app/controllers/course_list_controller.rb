class CourseListController < ApplicationController
  def index
  	@courses = Course.ordered_by_course_order.published
  end
end
