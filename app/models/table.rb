class Table < ActiveRecord::Base
  belongs_to :user

  has_many :orders
  has_many :dishes, through: :orders

  # accepts_nested_attributes_for :guests, :orders
  # validates_presence_of :guests

end
