class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @events = @category.events
  end

  def index
    @categories = Category.all
  end
end
