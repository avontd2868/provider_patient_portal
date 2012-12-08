class Photos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :parent_id
      t.string :caption
      t.string :photo    
      t.timestamps
    end
  end
end
