class TimeRecord < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :start_at, presence: true
end
