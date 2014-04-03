class VolunteerThanksController < ApplicationController
	layout 'blog'
  def index
  	@categories = Category.all
  	@recent_posts = Post.ordered_reverse_chronologically.published.limit(3)
  end
end
