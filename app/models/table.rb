class Table < ActiveRecord::Base
  belongs_to :user

  has_many :orders
  has_many :dishes, through: :orders


  def favorite_dish
      dishes = self.dishes
      dish_dishes = dishes.uniq.map do |dish|
        {
          dish: dish,
          count: dishes.to_a.count(dish)
        }
      end
      largest_count = dish_dishes.max_by {|c| c[:count]}
      largest_count[:dish]
    end

end
