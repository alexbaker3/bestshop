class Product < ApplicationRecord
has_many :comments
has_many :likes
has_many :fans, :through => :likes, :source => :user
end
