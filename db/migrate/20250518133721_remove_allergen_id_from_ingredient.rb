class RemoveAllergenIdFromIngredient < ActiveRecord::Migration[8.0]
  def change
    remove_column :ingredients, :allergen_id, :integer
  end
end
