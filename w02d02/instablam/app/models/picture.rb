class Picture < ApplicationRecord
	has_many :comments
	has_and_belongs_to_many :likes , class_name: "User"
	belongs_to :user
end
