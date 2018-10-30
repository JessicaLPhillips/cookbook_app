class Book < ApplicationRecord
	has_many :book_recipes
	has_many :recipes, through: :book_recipes
end
