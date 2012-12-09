class Requests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.boolean :accepted
      t.timestamp
    end
  end
end
