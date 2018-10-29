class Recipe < ApplicationRecord
	belongs_to :user
	belongs_to :group
	has_many :ingredients
end
