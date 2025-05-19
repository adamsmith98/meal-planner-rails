class RemoveCuisineFromRecipe < ActiveRecord::Migration[8.0]
  def change
    remove_reference :recipes, :cuisine, null: false, foreign_key: true
  end
end
