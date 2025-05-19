class DropAllergenTable < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :ingredients, :allergens
    drop_table :allergens
  end
end
