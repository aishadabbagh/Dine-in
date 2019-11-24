class Order < ApplicationRecord
  belongs_to :reservation
  belongs_to :chef
  belongs_to :users
  belongs_to :restaurants
  has_and_belongs_to_many :foods
end
