class PaymentsController < ApplicationController

	def new
	end

	def create
		token = params[:stripeToken]
		@product = Product.find(params[:product_id])
		@user = current_user
		# Create the charge on Stripe's servers
		begin
			charge = Stripe::Charge.create(
				:amount => @product.price,
				:currency => "usd",
				:source => token,
				:description => params[:stripeEmail]
				)
			if charge.paid
				Order.create(
					:product_id => @product.id,
					:user_id => @user.id,
					:total => @product.price)
			end
		rescue Stripe::CardError => e
			# The card has been declined
			body = e.json_body
			err = body[:error]
			flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
		end
		redirect_to product_path(@product)
	end
end
