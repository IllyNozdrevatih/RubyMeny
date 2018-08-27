class DishesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_dish , only: [:edit,:add_dish, :update ,:destroy]
  def index
    @dishes = Dish.all
  end
  def new
    @dish = Dish.new
  end
  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to dishes_path , success: 'Блюдо создано'
    else
      render :new, denger: 'Ошибка'
    end
  end
  def edit

  end
  def update
    if @dish.update(dish_params)
      redirect_to dishes_path , success: 'Блюдо обновлено'
    else
      render :edit , denger: 'Блюдо не обновлено'
    end
  end
  def destroy
    @dish.daily_menus.clear
    @dish.destroy
    redirect_to dishes_path, success: 'Блюдо удалено'
  end
  private
  def find_dish
    @dish = Dish.find(params[:id])
  end
  def dish_params
    params[:dish].permit(:name,:weight,:measure,:price,:units,:category_id)
  end
end

