# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  first_name :text
#  last_name  :text
#  country    :text
#  image      :text
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :lists

  #favourite lists of the user
  has_many :favourite_lists #the association
  has_many :favourites, :through => :favourite_lists #list a user favourites
end
