class DailyMenusController < ApplicationController
  before_action :authenticate_user!
  before_action :find_daily_menu , only: [:edit,:add_dish, :update ,:show ,:destroy]
  def index
    @daily_menus = DailyMenu.all
  end
  def new
    @daily_menu = DailyMenu.new
  end
  def create
    @daily_menu = DailyMenu.new(daily_menu_params)
    @daily_menu.save()
    redirect_to daily_menus_path
  end
  def edit

  end
  def update
    if @daily_menu.save
      redirect_to daily_menus_path
    else
      render :edit
    end
  end
  def show

  end
  def destroy
    if @daily_menu.destroy
      redirect_to daily_menus_path
    end
  end
  def add_dish
    @daily_menu.dish << Dish.find(dish_params['dish_id'])
    redirect_to edit_daily_menu_path
  end

  private
  def dish_params
    params.require(:dish).permit(:dish_id)
  end
  def find_daily_menu
    @daily_menu = DailyMenu.find(params[:id])
  end
  def daily_menu_params
    params[:daily_menu].permit(:date)
  end
end
