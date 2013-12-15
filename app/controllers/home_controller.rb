class HomeController < ApplicationController
	layout 'home'
  def index
    @post = Post.first
  end
end
