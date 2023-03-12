class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.integer :drinkid
      t.string :name
      t.string :ingredients
      t.string :instructions
      t.integer :userid
    end
  end
end
