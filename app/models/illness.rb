# == Schema Information
#
# Table name: illnesses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  link        :string(255)
#  photo_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Illness < ActiveRecord::Base
  has_and_belongs_to_many :patients
  has_many :photos
end
