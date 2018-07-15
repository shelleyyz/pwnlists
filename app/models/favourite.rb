class Favourite < ApplicationRecord #favourite model
  belongs_to :list, :optional => true
  belongs_to :user, :optional => true
end
