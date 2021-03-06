# == Schema Information
#
# Table name: games
#
#  id         :bigint(8)        not null, primary key
#  title      :text
#  genre      :text
#  developer  :text
#  image      :text
#  list_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ApplicationRecord
  has_and_belongs_to_many :lists, :optional => true
  def link_to_game
    "<a target='_blank' href='/games/#{ id }'>#{ title }</a>".html_safe
  end
end
