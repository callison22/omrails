class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :description

      t.timestamps
    end
  end
end
