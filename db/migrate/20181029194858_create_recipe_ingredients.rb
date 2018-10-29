class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.decimal :quantity, null: false, precision: 16, scale: 4
      t.string :unit, null: false

      t.timestamps
    end
  end
end
