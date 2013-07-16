class AddMaterialToPins < ActiveRecord::Migration
  def change
    add_column :pins, :material, :string
    add_index :pins, :material
  end
end
