class RemoveGroupIdFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :group_id, :integer
  end
end
