# == Schema Information
#
# Table name: doctors
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  last_name       :string(255)
#  first_name      :string(255)
#  email           :string(255)
#  phone           :string(255)
#  password        :string(255)
#  password_digest :string(255)
#  photo_id        :integer
#  patient         :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Doctor < ActiveRecord::Base
  has_secure_password
  
  has_and_belongs_to_many :patients
  has_many :appointments
  has_many :photos, :as => :imageable
end
