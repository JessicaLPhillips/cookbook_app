class Book < ApplicationRecord
	has_many :recipes
	has_many :recipes, through: :book_recipes
end
