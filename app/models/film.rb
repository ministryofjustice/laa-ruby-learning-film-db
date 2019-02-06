class Film < ApplicationRecord
  belongs_to :user

  scope :for_team, ->(team) { where(user_id: team.users.map(&:id)) }
end
