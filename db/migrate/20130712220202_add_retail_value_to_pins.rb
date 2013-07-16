class AddRetailValueToPins < ActiveRecord::Migration
  def change
    add_column :pins, :retail_value, :string
    add_index :pins, :retail_value
  end
end
