class CreateUserIngredients < ActiveRecord::Migration[8.0]
  def change
    create_table :user_ingredients do |t|
      t.references :user, null: false, foreign_key: true
      t.references :recipe_ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
