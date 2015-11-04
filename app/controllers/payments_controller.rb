class PaymentsController < ApplicationController

	def create
		@product = params[:product_id]
		@user = curren_user
		token = params[:stripeToken]
		# Create the charge on Stripe's servers
		begin
			charge = Stripe::Charge.create(
				:amount => @product.price,
				:currency => "usd",
				:source => toekn,
				:description => params[:stripeEmail]
				)
			if charge.paid
				Order.create(@product.id, @user.id, @product.price)
			end
		rescue Stripe::CardError => e
			# The card has been declined
			body = e.json_body
			err = body[:error]
			flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
		end
		redirect_to product_path(product)
	end
end
