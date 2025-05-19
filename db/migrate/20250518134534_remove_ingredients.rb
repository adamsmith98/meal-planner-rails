class RemoveIngredients < ActiveRecord::Migration[8.0]
  def change
    drop_table :ingredients
  end
end
