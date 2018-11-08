class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = current_user.recipes.all
  end

  def show
    @recipe = Recipe.find(params[:id])

    # unless @recipe.user == current_user || @recipe.groups.ids.to_set.intersect?(current_user.groups.ids.to_set)
    #   raise ActionController::RoutingError.new('Not Found')
    # end

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name"   # Excluding ".pdf" extension.
      end
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
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
    params.require(:recipe).permit(:name, :description, :instructions, ingredients_attributes: [:id, :name, :_destroy])
  end
end

