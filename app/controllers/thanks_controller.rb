class ThanksController < ApplicationController
  def index
  	@active_courses = Course.active_courses
  end
end
