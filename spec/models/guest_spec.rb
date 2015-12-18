require 'rails_helper'

RSpec.desribe Guest, type: :model do
  describe "given a guest" do
    before do
      @yoyo = Guest.create({name: 'Yolanda'})
      @soup = Dish.create({name: 'Clam Chowder'})
      Order.create({guest: @yoyo, dish: @soup})
    end
    describe "#favorite_dish" do
      it "returns most consumed dish" do
        actual
      end

    end
  end
end

# rake db:test:prepare
# rspec
