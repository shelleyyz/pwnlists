# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :text
#  first_name      :text
#  last_name       :text
#  password_digest :text
#  country         :text
#  image           :text
#  bio             :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true

  has_many :lists
  has_many :games


  # #favourite lists of the user
  # has_many :favourite_lists #the association
  # has_many :favourites, :through => :favourite_lists #list a user favourites
end
