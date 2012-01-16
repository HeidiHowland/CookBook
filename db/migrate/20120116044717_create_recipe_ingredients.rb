class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.integer :measurement
      t.string :unit
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
