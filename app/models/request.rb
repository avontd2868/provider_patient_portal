# == Schema Information
#
# Table name: requests
#
#  id          :integer          not null, primary key
#  sender_id   :integer
#  receiver_id :integer
#  accepted    :boolean
#

class Request < ActiveRecord::Base
  belongs_to :doctors, :foreign_key => 'receiver_id'
  belongs_to :patients, :foreign_key => 'sender_id'
end
