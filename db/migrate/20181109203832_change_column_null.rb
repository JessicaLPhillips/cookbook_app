class ChangeColumnNull < ActiveRecord::Migration[5.2]
  def change
  	change_column_null :ingredients, :quantity, false
  end
end
