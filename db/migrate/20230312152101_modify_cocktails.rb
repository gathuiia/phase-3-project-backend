class ModifyCocktails < ActiveRecord::Migration[6.1]
  def change
    add_reference :cocktails, :bartender, index: true
  end
end
