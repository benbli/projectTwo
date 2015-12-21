class Dish < ActiveRecord::Base
  has_many :orders
  has_many :tables, through: :orders
end
