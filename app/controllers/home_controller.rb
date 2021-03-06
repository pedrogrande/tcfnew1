class HomeController < ApplicationController
	layout 'home'
  def index
    @post = Post.ordered_reverse_chronologically.first
    @courses = Course.ordered_by_course_order
    @sliders = Slider.order(priority: :asc)
  end
end
