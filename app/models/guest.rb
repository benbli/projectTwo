class Guest < ActiveRecord::Base
  belongs_to :table
  has_many :orders
  has_many :dishes, through: :orders
end
