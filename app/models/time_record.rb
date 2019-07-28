class TimeRecord < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :start_at, presence: true
  validate :end_at_must_be_in_feature

  private

  # validation

  def end_at_must_be_in_feature
    return if end_at.nil?
    return if start_at.nil?

    if end_at < start_at
      errors.add(:end_at, :invalid)
    end
  end
end
