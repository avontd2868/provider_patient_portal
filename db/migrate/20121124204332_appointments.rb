class Appointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.date :datetime
    end
  end
end
