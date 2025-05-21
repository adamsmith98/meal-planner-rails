class RenameUserIngredientsToShoppingListItems < ActiveRecord::Migration[8.0]
  def change
    rename_table :user_ingredients, :shopping_list_items
  end
end
