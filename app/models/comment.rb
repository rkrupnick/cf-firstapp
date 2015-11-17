class Comment < ActiveRecord::Base
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true, less_than: 6 }
  belongs_to :user
  belongs_to :product
  self.per_page = 5
end
