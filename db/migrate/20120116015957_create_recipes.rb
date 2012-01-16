class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :oven_temp
      t.integer :prep_time
      t.integer :cook_time
      t.integer :user_id
      t.integer :servings

      t.timestamps
    end
    add_index :recipes, :name
    add_index :recipes, :prep_time
    add_index :recipes, :user_id
  end
end