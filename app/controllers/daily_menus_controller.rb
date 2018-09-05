class DailyMenusController < ApplicationController
  # before_action :authenticate_user!
  before_action :find_daily_menu , only: [:edit,:add_dish, :update ,:show ,:destroy]
  def index
    @daily_menus = DailyMenu.includes(:dishes).order(created_at: :desc)
  end
  def new
    @daily_menu = DailyMenu.new
  end
  def create
    @daily_menu = DailyMenu.new('date'=>daily_menu_params)
    @daily_menu.save()
    redirect_to daily_menus_path , success: 'Меню создано . Измените меню , что-бы добавить блюдо'
  end
  def edit

  end
  def update
    if @daily_menu.save
      redirect_to daily_menus_path, success: 'Меню обновлено'
    else
      render :edit, denger: 'Меню не обновлено'
    end
  end
  def show

  end
  def destroy
    @daily_menu.dishes.clear
    @daily_menu.delete
    redirect_to daily_menus_path , success: 'Меню удалено'
  end
  def add_dish
    @daily_menu.dishes << Dish.find(dish_params['dish_id'])
    redirect_to edit_daily_menu_path
  end

  private
  
  def dish_params
    params.require(:dish).permit(:dish_id)
  end
  def find_daily_menu
    @daily_menu = DailyMenu.includes(:dishes).find(params[:id])
  end
  def daily_menu_params
    request['date']
  end
end
