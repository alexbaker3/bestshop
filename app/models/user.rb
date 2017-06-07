class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         validates :username, :presence => true
         validates :username, :uniqueness => true
         has_many :likes
         has_many :comments
         has_many :liked_products, :through => :likes, :source => :product
end
