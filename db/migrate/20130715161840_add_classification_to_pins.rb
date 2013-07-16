class AddClassificationToPins < ActiveRecord::Migration
  def change
    add_column :pins, :classification, :string
    add_index :pins, :classification
  end
end
