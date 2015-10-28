require 'rails_helper'

describe Comment do
	context "a comment without a body" do
		before do
			@product = Product.create(:name => "race bike")
			@user = User.create(:email => "user@example.com", :password => "password")
			@comment = @product.comments.create(:rating => 1, :user => @user)
		end

		it "is not valid" do
			expect(@comment).not_to be_valid
		end
	end
end