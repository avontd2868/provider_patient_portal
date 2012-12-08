class Illnesses < ActiveRecord::Migration
  def change
    create_table :illnesses do |t|
      t.string :name
      t.text :description
      t.string :link
      t.integer :photo_id

      t.timestamps
    end
  end
end
