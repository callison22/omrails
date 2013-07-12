class AddPriceToPins < ActiveRecord::Migration
  def change
    add_column :pins, :price, :string
    add_index :pins, :price
  end
end
