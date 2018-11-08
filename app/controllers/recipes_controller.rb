class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = current_user.recipes.all
  end

  def show
    @recipe = current_user.recipes.find(params[:id])
  end

  def new
    @recipe = current_user.recipes.new
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe), notice: "Recipe Created!"
    else
      flash[:recipe_errors] = @recipe.errors.full_messages
      render :new
    end
  end

  def edit
    @recipe = current_user.recipes.find(params[:id])
  end

  def update
    @recipe = current_user.recipes.find(params[:id])
    @recipe.update(recipe_params)
      if @recipe.save
       redirect_to recipe_path(@recipe), notice: "Recipe Changed"
      else
       render :edit
      end
  end

private  
  def recipe_params
    params.require(:recipe).permit(:name, :description, :instructions, :picture, ingredients_attributes: [:id, :name, :_destroy])
  end
end

