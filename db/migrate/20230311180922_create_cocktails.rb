class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.integer :cocktails_id
      t.string :name
      t.string :style
      t.string :ingredients
      t.string :instructions
    end
  end
end
