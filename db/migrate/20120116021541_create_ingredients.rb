class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name

      t.timestamps
    end
    add_index :ingredients, :name
  end
end