class CreateBartenders < ActiveRecord::Migration[6.1]
  def change
    create_table (:bartender) do |t|
      t.integer :bartender_id
      t.string :name
      t.string :bar 
    end
  end
end
