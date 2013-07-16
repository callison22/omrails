class AddConditionToPins < ActiveRecord::Migration
  def change
    add_column :pins, :condition, :string
    add_index :pins, :condition
  end
end
