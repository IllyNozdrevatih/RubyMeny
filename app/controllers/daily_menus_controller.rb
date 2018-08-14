class DailyMenusController < ApplicationController
  before_action :find_daily_menu , only: [:edit,:add_dish, :update ,:show ,:destroy]
  def index
  end
  def new
    @daily_menu = DailyMenu.new
  end
  def create
    @daily_menu = DailyMenu.new(:date =>request['date'])
    @daily_menu.save()
    render :index
  end
  def edit

  end
  def update
  end
  def show

  end
  def destroy

  end
  def add_dish
    @daily_menu.dish << Dish.find(dish_params['dish_id'])
    redirect_to edit_daily_menu_path
  end

  def dish_params
    params.require(:dish).permit(:dish_id)
  end
  def find_daily_menu
    @daily_menu = DailyMenu.find(params[:id])
  end
end
