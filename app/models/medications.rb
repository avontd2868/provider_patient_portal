# == Schema Information
#
# Table name: medications
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  photo_id    :integer
#  description :text
#  interaction :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Medications < ActiveRecord::Base
  has_and_belongs_to_many :patients
end
