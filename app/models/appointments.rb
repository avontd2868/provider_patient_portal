# == Schema Information
#
# Table name: appointments
#
#  id         :integer          not null, primary key
#  doctor_id  :integer
#  patient_id :integer
#  datetime   :date
#

class Appointments < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
end
