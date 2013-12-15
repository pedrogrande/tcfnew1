class CourseListController < ApplicationController
  def index
  	@courses = Course.published
  end
end
