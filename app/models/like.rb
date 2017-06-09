class Like < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_one :comment, :through => :product, :source => :comments
end
