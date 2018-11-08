class Group < ApplicationRecord
	has_and_belongs_to_many :recipes
	has_many :group_users
	has_many :users, through: :group_users
	has_many_attached :pictures
end
