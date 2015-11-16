class Product < ActiveRecord::Base
	validates :name, presence: true
	has_many :orders
	has_many :comments

	def average_rating
		comments.average(:rating).to_f
	end

	def compare_rating(average_rating)
		$redis.zadd("average_ratings", average_rating, self.id)
	end

	def rank
		$redis.zrevrank("average_ratings", self.id) + 1
	end

	def best_product
		$redis.zscore("average_ratings", self.id).to_i
	end

	def self.top_3
		$redis.zrevrange("average_ratings", 0, 2).map{|id| Product.find(id)}
	end
end
