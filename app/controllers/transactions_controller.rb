class TransactionsController < ApplicationController
	
	def new
	    @enrolment = Enrolment.find_by!(guid: params[:guid])
	  end

	def create
	    enrolment = Enrolment.find_by!(guid: params[:guid])
	    amount = params[:amount]
	    token = params[:stripeToken]

	    stripe_customer = Stripe::Customer.create(
	      :card => token,
	      :description => enrolment.name
	    )

	    begin
	      charge = Stripe::Charge.create(
	      	amount: 	amount, 
	        currency:   "aud",
	        customer:   stripe_customer.id
	      )
	      @payment = enrolment.payments.create!(
	        enrolment_id: enrolment.id,
	        payment_amount: amount
	      )
	      enrolment.stripe_id = stripe_customer.id
	      EnrolmentMailer.response(enrolment, amount).deliver
	      redirect_to enrolment_thanks_url(guid: enrolment.guid)
	    rescue Stripe::CardError => e
	      # The card has been declined or
	      # some other error has occured
	      @error = e
	      render :new
	    end

	end
end