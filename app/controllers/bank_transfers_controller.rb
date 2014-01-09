class BankTransfersController < ApplicationController
	before_action :authenticate_user!
	def index
		amount = params[:amount]
		enrolment = Enrolment.find_by!(guid: params[:guid])
		BankTransferMailer.response(enrolment, amount).deliver
	    redirect_to enrolment_thanks_url(guid: enrolment.guid)
	end
end