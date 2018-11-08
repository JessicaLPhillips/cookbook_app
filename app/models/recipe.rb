class Recipe < ApplicationRecord
	belongs_to :user
	has_many :ingredients
	accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
	has_one_attached :picture
end
