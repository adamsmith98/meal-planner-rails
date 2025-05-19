class CreateAllergens < ActiveRecord::Migration[8.0]
  def change
    create_table :allergens do |t|
      t.string :name

      t.timestamps
    end
  end
end
