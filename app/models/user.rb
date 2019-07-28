class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :trackable

  has_many :employments
  has_many :companies, through: :employments
  has_one :employment
  has_one :company, through: :employment

  validates :name, presence: true
end
