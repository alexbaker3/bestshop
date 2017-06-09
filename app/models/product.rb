class Product < ApplicationRecord
validates :name, :presence => true
validates :image, :presence => true
validates :description, :presence => true
validates :link, :presence => true
validates :price, :presence => true
validates :brand, :presence => true
validates :retailer, :presence => true

has_many :comments
has_many :likes
has_many :fans, :through => :likes, :source => :user
end
