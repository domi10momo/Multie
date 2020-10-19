class Spot < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :wants, dependent: :destroy

  has_many :wanted_users, through: :wants, source: :user
end
