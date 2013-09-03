class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
  end

  private
    def recipe_params
      params.require(:recipe).permit(:title, :description, :instructions, :quantities_attributes)
    end
end
