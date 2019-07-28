class Company < ApplicationRecord
  has_many :employments
  has_many :users, through: :employments
end
