class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :description
      t.text :instructions, null: false
      t.integer :group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
