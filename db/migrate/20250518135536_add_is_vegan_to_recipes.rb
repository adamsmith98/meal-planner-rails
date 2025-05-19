class AddIsVeganToRecipes < ActiveRecord::Migration[8.0]
  def change
    add_column :recipes, :is_vegan, :boolean
  end
end
