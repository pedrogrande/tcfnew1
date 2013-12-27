class BlogController < ApplicationController
  def index
  	@categories = Category.all
  	@recent_posts = Post.ordered_reverse_chronologically.published.limit(3)
  	if params[:tag]
  		@tag = ActsAsTaggableOn::Tag.find(params[:tag])
  		@posts = Post.ordered_reverse_chronologically.published.tagged_with(@tag).paginate(:page => params[:page])
  	elsif params[:category]
  		@category = Category.find(params[:category])
  		@posts = @category.posts.ordered_reverse_chronologically.published.paginate(:page => params[:page])
  	else
  		@posts = Post.ordered_reverse_chronologically.published.paginate(:page => params[:page])
  	end
  end
end
