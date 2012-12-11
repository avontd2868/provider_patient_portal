# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  photo      :string(255)
#  name       :string(255)
#  visit_id   :integer
#  doctor_id  :integer
#  user_id    :integer
#  message_id :integer
#  primary    :boolean
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ActiveRecord::Base
  attr_accessible :image, :name #, :photo, :visit_id, :doctor_id, :message_id, :primary, :image, :remote_photo_url, :user_id
  mount_uploader :photos, PhotosUploader
  # belongs_to :visit
  # belongs_to :doctor
  belongs_to :patient
  # belongs_to :message
end
