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
      redirect_to categories_path
    else
      render :new
    end
  end
  def edit

  end
  def update
    if @category.update(category_param)
      redirect_to categories_path
    else
      render :edit
    end
  end
  def show

  end
  def destroy
    if @category.destroy
      redirect_to categories_path
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
