# == Schema Information
#
# Table name: patients
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  last_name       :string(255)
#  first_name      :string(255)
#  email           :string(255)
#  phone           :string(255)
#  password        :string(255)
#  password_digest :string(255)
#  age             :integer
#  photo_id        :integer
#  patient         :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Patient < ActiveRecord::Base
  #attr_accessible :photo_id, :remote_photo_url
  # mount_uploader :photos, PhotosUploader

  has_secure_password
  
  has_and_belongs_to_many :doctors
  has_and_belongs_to_many :illnesses
  has_many :appointments
  has_many :photos
end
