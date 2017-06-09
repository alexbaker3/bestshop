class Comment < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_one :like, :through => :product, :source => :likes
end
