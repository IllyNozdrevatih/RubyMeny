class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_category , only: [:edit,:update ,:show ,:destroy]
  def index
    @categories = Category.all
  end
  def new
    @category = Category.new
  end
  def create
    @category = Category.new(category_param)
    if @category.save
      redirect_to categories_path , success: 'Категория создана'
    else
      render :new
    end
  end
  def edit

  end
  def update
    if @category.update(category_param)
      redirect_to categories_path , success: 'Категория изменина'
    else
      render :edit
    end
  end
  def show

  end
  def destroy
    if @category.dish.empty?
      @category.destroy
      redirect_to categories_path ,success: 'Категория удалена'
    else
      redirect_to categories_path ,danger: 'Переопределите категории блюд , всего ' +  @category.dish.length.to_s
    end
  end
  private
  def find_category
    @category = Category.find(params[:id])
  end
  def category_param
    params[:category].permit(:name)
  end
end
