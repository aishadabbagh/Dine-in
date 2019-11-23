class Order < ApplicationRecord
  belongs_to :reservation
  belongs_to :chef
  has_and_belongs_to_many :foods
end
