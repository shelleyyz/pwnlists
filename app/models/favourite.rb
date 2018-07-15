# == Schema Information
#
# Table name: favourites
#
#  id         :bigint(8)        not null, primary key
#  list_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Favourite < ApplicationRecord #favourite model
  belongs_to :list, :optional => true
  belongs_to :user, :optional => true
end
