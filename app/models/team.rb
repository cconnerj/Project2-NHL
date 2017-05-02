class Team < ActiveRecord::Base
  has_many :memberships
  has_many :players, through: :memberships
end
