class BeginnerCoderSpecialController < ApplicationController
  def index
  	@enrolment = Enrolment.new
  end
end
