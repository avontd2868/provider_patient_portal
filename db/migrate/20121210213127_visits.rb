class Visits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.datetime :dateandtime
      t.text :notes
      t.integer :photo_id
      t.timestamps
    end
  end
end
