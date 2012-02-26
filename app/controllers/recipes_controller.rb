class RecipesController < ApplicationController
  filter_access_to :all
  def index
    @categories = Category.all
    @recipes = current_user.recipes.all
  end
  
  def create
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      flash[:notice] = "Success! Recipe added."
    else
      flash[:notice] = "There was a problem saving that Recipe in the database"
    end
    redirect_to "/"
  end

  def show
    @recipe = Recipe.find(params[:id])
    @steps = @recipe.steps
  end

end
