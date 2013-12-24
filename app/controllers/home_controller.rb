class HomeController < ApplicationController
	layout 'home'
  def index
    @post = Post.first
    @courses = Course.unscoped.order(course_order: :asc)
  end
end
