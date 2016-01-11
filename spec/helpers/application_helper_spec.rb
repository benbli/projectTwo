require 'rails_helper'

RSpec.describe Table, type: :model do
  describe "given a table" do
    before do
      @table = Table.create({seat_numbers: 2})
      @burg = Dish.create({name: 'Bacon cheeseburger', description: 'bacony', price: 7})
      @pie = Dish.create({name: 'Apple pie', description: 'has apples', price: 3 })
      Order.create({table_id: @table, dish_id: @burg, comment: "on the fly"})
      Order.create({table_id: @table, dish_id: @burg, comment: "on the fly"})
      Order.create({table_id: @table, dish_id: @burg, comment: "on the fly"})
      Order.create({table_id: @table, dish_id: @pie, comment: "on the fly"})
    end
    describe '#favorite_dish' do
      it 'returns most consumed dish' do
        actual = @table.favorite_dish
        expected = @burg
        expect(actual).to eq(expected)
      end
    end
  end
end
