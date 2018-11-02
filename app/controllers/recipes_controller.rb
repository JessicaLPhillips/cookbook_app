class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = current_user.recipes.all
  end

  def show
    @recipe = current_user.recipes.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipe_path(@recipe), notice: "Recipe Created!"
    else
       render :new
  end

  def edit

  end

  def update

  end

private  

  def recipe_params
    params.require(:recipe).permit(:name, :description)
  end

end
end
