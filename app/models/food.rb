class Food < ApplicationRecord
  belongs_to :restaurant
  has_and_belongs_to_many :orders
  validates :name , presence: true

end
