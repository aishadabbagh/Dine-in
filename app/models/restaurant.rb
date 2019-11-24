class Restaurant < ApplicationRecord
    has_many :reservations, dependent: :destroy
    has_many :users, through: :reservations
    has_many :foods, dependent: :destroy
    has_many :tables, dependent: :destroy
    has_many :chefs, dependent: :destroy
end
