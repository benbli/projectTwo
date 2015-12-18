class Dish < ActiveRecord::Base
  has_many :orders
  has_many :guests, through: :orders
end
