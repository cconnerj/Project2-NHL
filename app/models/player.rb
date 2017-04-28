class Player < ActiveRecord::Base
  belongs_to :team, optional: true
  has_many :memberships
end
