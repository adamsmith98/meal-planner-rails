class AddQuantityToShoppingListItems < ActiveRecord::Migration[8.0]
  def change
    add_column :shopping_list_items, :quantity, :string
  end
end
