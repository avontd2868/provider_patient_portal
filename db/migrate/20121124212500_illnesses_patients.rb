class IllnessesPatients < ActiveRecord::Migration
  def change
    create_table :illnesses_patients do |t|
      t.integer :illness_id
      t.integer :patient_id
      t.timestamp
    end
  end
end
