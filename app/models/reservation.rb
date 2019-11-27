class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_one :order ,dependent: :destroy
end
