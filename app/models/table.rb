class Table < ActiveRecord::Base
  belongs_to :user

  has_many :orders
  has_many :dishes, through: :orders

end
