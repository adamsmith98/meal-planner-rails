class RemoveIngredientRefFromRecipeIngredients < ActiveRecord::Migration[8.0]
  def change
    remove_reference :recipe_ingredients, :ingredient, null: false, foreign_key: true
  end
end
