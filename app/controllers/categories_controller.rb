class CategoriesController < ApplicationController
  before_action :find_category , only: [:edit,:update ,:show ,:destroy]
  def index

  end
  def new
    @category = Category.new
  end
  def create
    @category = Category.new(category_param)
    if @category.save
      render :index
    else
      render :new
    end
  end
  def edit

  end
  def update
    if @category.update
      render :index
    end
  end
  def show

  end
  def destroy
    if @category.destroy
      render :index
    end
  end
  private
  def find_category
    @category = Category.find(params[:id])
  end
  def category_param
    params[:category][:name]
  end
end
