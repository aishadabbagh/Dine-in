class Order < ApplicationRecord
  belongs_to :reservation
  belongs_to :chef
  belongs_to :user
  belongs_to :restaurant
  has_and_belongs_to_many :foods
end
