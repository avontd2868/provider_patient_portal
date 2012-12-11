# == Schema Information
#
# Table name: matches
#
#  id         :integer          not null, primary key
#  patient_id :integer
#  doctor_id  :integer
#

class Matches < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

end
