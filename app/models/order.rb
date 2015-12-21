class Order < ActiveRecord::Base
  belongs_to :table
  belongs_to :dish

  #look up enum status: {}

end
