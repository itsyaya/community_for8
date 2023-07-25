class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
    # The @categories instance variable is automatically loaded with all categories
    @categories = Category.all
  end

  def show
    # The @category instance variable is automatically loaded with the specific category
    # based on the :id parameter from the URL.
    @category = Category.find(params[:id])
  end
end
