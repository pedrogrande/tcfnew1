class TransactionsController < ApplicationController
	def new
	    @enrolment = Enrolment.find_by!(guid: params[:guid])
	  end

	  def show
	    @sale = Sale.find_by!(guid: params[:guid])
	    @product = @sale.product
	  end

	  def create
	    enrolment = Enrolment.find_by!(guid: params[:guid])

	    token = params[:stripeToken]

	    begin
	      charge = Stripe::Charge.create(
	        amount:      ,
	        currency:    "aud",
	        card:        token,
	        description: params[:email]
	      )
	      @sale = enrolment.sales.create!(
	        enrolment_id: enrolment.id,
	        email:      params[:email]
	      )
	      redirect_to pickup_url(guid: @sale.guid)
	    rescue Stripe::CardError => e
	      # The card has been declined or
	      # some other error has occured
	      @error = e
	      render :new
	    end
	  end
end