class DropRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
  	drop_table :recipe_ingredients
  end
end
