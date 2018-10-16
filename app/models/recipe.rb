class Recipe < ApplicationRecord
	has_many :ingredients, inverse_of: :recipe
	has_many :directions, inverse_of: :recipe

	accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true


	validates :title, :description, :image, presence: true							  
	has_one_attached :image
	
end
