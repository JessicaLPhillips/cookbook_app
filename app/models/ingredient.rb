class Ingredient < ApplicationRecord
	belongs_to :recipe
	has_many :recipes
	has_many :recipes, through: :recipe_ingredient
end
