class AddDietaryDataToRecipes < ActiveRecord::Migration[8.0]
  def change
    add_column :recipes, :is_gluten_free, :boolean
    add_column :recipes, :is_dairy_free, :boolean
    add_column :recipes, :is_vegetarian, :boolean
  end
end
