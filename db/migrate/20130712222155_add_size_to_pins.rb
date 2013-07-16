class AddSizeToPins < ActiveRecord::Migration
  def change
    add_column :pins, :size, :string
    add_index :pins, :size
  end
end
