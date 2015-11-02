require 'rails_helper'

describe Comment do

		it "is valid" do
			comment = build(:comment)
			expect(comment).to be_valid
		end

		it "is invalid without a body" do
			comment = build(:comment, body: "")
			expect(comment).to_not be_valid
		end
end