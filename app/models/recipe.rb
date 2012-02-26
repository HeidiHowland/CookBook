class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients
  
  has_many :recipe_categories
  has_many :categories, :through => :recipe_categories
  
  belongs_to :user
  
  has_many :steps
  
  accepts_nested_attributes_for :steps
end
