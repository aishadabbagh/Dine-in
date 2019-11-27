class Order < ApplicationRecord
  belongs_to :reservation
  has_and_belongs_to_many :foods
end
