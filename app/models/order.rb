class Order < ActiveRecord::Base
  belongs_to :guest
  belongs_to :dish
end
