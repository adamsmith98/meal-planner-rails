class ShoppingListItem < ApplicationRecord
  belongs_to :user
  belongs_to :recipe_ingredient
end
