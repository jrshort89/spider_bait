class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.create(food_params)
  end
  private

  def food_params
    params.require(:food).permit(:name, :vegan, :protein, :description, :price)
  end
end
