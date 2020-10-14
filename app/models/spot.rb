class Spot < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :wants, dependent: :destroy
end
