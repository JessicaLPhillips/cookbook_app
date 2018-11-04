class Ingredient < ApplicationRecord
	has_many :recipe_ingredients
	has_many :recipes, through: :recipe_ingredients
end

def ingredients
	"#{recipe_ingredients.quantity} #{recipe_ingredients.unit} #{ingredients.name}"
end