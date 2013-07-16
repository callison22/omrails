class AddLenderNotesToPins < ActiveRecord::Migration
  def change
    add_column :pins, :lender_notes, :text
    add_index :pins, :lender_notes
  end
end
