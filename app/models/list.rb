# == Schema Information
#
# Table name: lists
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  description :text
#  public      :boolean
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class List < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :games

  # #favourited by users
  # has_many :favourite_lists #the association
  # has_many :favourited_by, :through => :favourite_lists #the user favouritng a list
end
