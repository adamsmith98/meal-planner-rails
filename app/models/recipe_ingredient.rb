class RecipeIngredient < ApplicationRecord
  belongs_to :recipe

  validates :quantity, :unit, presence: true
end
