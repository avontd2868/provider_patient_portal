# == Schema Information
#
# Table name: visits
#
#  id          :integer          not null, primary key
#  doctor_id   :integer
#  patient_id  :integer
#  dateandtime :datetime
#  notes       :text
#  photo_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Visit < ActiveRecord::Base
  has_many :photos

end
