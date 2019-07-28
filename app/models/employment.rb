class Employment < ApplicationRecord
  belongs_to :company
  belongs_to :user

  validates :company, presence: true
  validates :user, presence: true
  validate :employment_must_be_unique

  private

  def duplicated?
    Employment.where(user: user, company: company).exists?
  end

  # validations

  def employment_must_be_unique
    return if company.nil?
    return if user.nil?
    return if persisted?

    errors.add(:base, :duplicated) if duplicated?
  end
end
