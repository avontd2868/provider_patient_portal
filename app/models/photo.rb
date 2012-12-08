# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  parent_id  :integer
#  caption    :string(255)
#  photo      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true
end
