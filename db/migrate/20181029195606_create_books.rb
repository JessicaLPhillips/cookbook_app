class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.text :intro
      t.text :index
      t.text :table_of_contents

      t.timestamps
    end
  end
end
