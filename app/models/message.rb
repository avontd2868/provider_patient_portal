# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  sender     :integer
#  recipient  :integer
#  subject    :string(255)
#  content    :text
#  photo_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  has_many :photos
  
end
