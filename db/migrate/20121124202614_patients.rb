class Patients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :username
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :phone
      t.string :password
      t.string :password_digest
      t.integer :age
      t.integer :photo_id
      t.boolean :patient             
      t.timestamps
    end
  end
end
