class MedicationsPatients < ActiveRecord::Migration
  def change
    create_table :medications_patients do |t|
      t.integer :medication_id
      t.integer :patient_id
      t.timestamp
    end
  end
end
