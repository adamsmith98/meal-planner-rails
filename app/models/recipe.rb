class Recipe < ApplicationRecord
  has_many :recipe_ingredients, dependent: :destroy
  accepts_nested_attributes_for :recipe_ingredients, allow_destroy: true

  validates :name, :instructions, :prep_time, :cooking_time, :serves, presence: true
end
