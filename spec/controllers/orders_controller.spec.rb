require 'rails_helper'

RSpec.describe OrderController, type: controller do
  describe Order do
    before do
      @order.create({table_id: 7, dish_id: 2, comment: "nut allergy"})
      @order.create({table_id: 7, dish_id: 1, comment: "seafood allergy"})
    end
    describe '#table_dishes_total' do
      it 'returns sum of all orders on a table' do
        actual
      end
    end
end


def orderSum
  @table.dishes.sum(:price)
end
