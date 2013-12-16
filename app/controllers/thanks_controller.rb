class ThanksController < ApplicationController
  def index
  	@courses = Course.all
  end
end
