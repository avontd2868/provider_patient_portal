class Photos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo    
      t.string :name     
      t.integer :visit_id
      t.integer :doctor_id
      t.integer :user_id
      t.integer :message_id
      t.boolean :primary  
      t.string :image    
      t.timestamps
    end
  end
end
