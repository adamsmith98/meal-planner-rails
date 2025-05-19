class AddIngredientNameToRecipeIngredients < ActiveRecord::Migration[8.0]
  def change
    add_column :recipe_ingredients, :name, :string
  end
end
