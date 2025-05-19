class CreateRecipes < ActiveRecord::Migration[8.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.string :prep_time
      t.string :cooking_time
      t.string :serves
      t.references :cuisine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
