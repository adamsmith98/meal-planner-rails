class RemoveAllergensFromIngredients < ActiveRecord::Migration[8.0]
  def change
    remove_column :ingredients, :allergen
  end
end
