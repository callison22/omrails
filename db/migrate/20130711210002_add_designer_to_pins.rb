class AddDesignerToPins < ActiveRecord::Migration
  def change
    add_column :pins, :Designer, :string
    add_index :pins, :Designer
  end
end
