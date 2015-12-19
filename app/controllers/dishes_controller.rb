class DishesController < ApplicationController

  # dishes GET    /dishes(.:format)                    dishes#index
  #             POST   /dishes(.:format)                    dishes#create
  #    new_dish GET    /dishes/new(.:format)                dishes#new
  #   edit_dish GET    /dishes/:id/edit(.:format)           dishes#edit
  #        dish GET    /dishes/:id(.:format)                dishes#show
  #             PATCH  /dishes/:id(.:format)                dishes#update
  #             PUT    /dishes/:id(.:format)                dishes#update
  #             DELETE /dishes/:id(.:format)                dishes#destroy

  def index
    @dishes = Dish.all
    @dish = Dish.new
  end

  def create
    Dish.create(dish_params)
    redirect_to dishes_path
  end

  def destroy
    Dish.delete(params[:id])
    redirect_to dishes_path
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def update
    dish = Dish.find(params[:id])
    dish.update(dish_params)
    redirect_to dishes_path
  end

private
  def dish_params
    params.require(:dish).permit(:name, :description, :price)
  end

end
