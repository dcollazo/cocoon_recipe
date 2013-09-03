class StaticPagesController < ApplicationController
  def home
    @recipe = Recipe.new
  end
end
