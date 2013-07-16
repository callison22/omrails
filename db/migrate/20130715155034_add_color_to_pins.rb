class AddColorToPins < ActiveRecord::Migration
  def change
    add_column :pins, :color, :string
    add_index :pins, :color
  end
end
