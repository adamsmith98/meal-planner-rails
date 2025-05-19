class DropCuisines < ActiveRecord::Migration[8.0]
  def change
    drop_table :cuisines
  end
end
