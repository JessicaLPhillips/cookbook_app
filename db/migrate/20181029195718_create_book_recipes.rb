class CreateBookRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :book_recipes do |t|
      t.integer :book_id, null: false
      t.integer :recipe_id, null: false

      t.timestamps
    end
  end
end
