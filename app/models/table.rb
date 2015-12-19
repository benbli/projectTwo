class Table < ActiveRecord::Base
  belongs_to :user
  has_many :guests
  has_many :orders, through: :guests
  has_many :dishes, through: :orders

  # accepts_nested_attributes_for :guests
  # validates_presence_of :guests
end
