class CreateJoinTableGroupRecipe < ActiveRecord::Migration[5.2]
  def change
    create_join_table :groups, :recipes do |t|
      # t.index [:group_id, :recipe_id]
      # t.index [:recipe_id, :group_id]
    end
  end
end
