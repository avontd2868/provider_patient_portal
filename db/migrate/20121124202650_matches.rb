class Matches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :patient_id
      t.integer :doctor_id
    end
  end
end
