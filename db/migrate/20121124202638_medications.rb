class Medications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.integer :photo_id
      t.text :description
      t.string :interaction

      t.timestamps
    end
  end
end
