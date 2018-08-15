class DishesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_dish , only: [:edit,:add_dish, :update ,:show ,:destroy]
  def index
    @dishes = Dish.all
  end
  def new
    @dish = Dish.new
  end
  def create
    @dish = Dish.new(dish_params)
    Category.find(add_category).dish << @dish
    if @dish.save
      redirect_to dishes_path
    else
      render :new
    end
  end
  def edit

  end
  def update
    if @dish.update
      render :index
    else
      render :edit
    end
  end
  def show

  end
  def destroy
    if @dish.destroy
      redirect_to dishes_path
    end
  end
  private
  def find_dish
    @dish = Dish.find(params[:id])
  end
  def dish_params
    params[:dish].permit(:name,:weight,:measure,:price)
  end
  def add_category
    request['category']['category_id']
  end
end

