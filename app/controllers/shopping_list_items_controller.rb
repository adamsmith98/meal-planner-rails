class ShoppingListItemsController < ApplicationController
  def index
    @shopping_list_items = ShoppingListItem.where(user: Current.user)
  end

  def create
    @shopping_list_item = ShoppingListItem.new(shopping_list_item_params)

    if @shopping_list_item.save
      flash[:notice] = "Successfully added to shopping list"
    else
      flash[:error] = "Unable to add to shopping list"
    end
    redirect_back fallback_location: root_path
  end

  private
  def shopping_list_item_params
    params.expect(shopping_list_item: [ :user_id, :recipe_ingredient_id ])
  end
end
