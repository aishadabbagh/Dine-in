class Restaurant < ApplicationRecord
    has_many :reservations, dependent: :destroy
    belongs_to :user
    has_many :foods, dependent: :destroy
    has_many :tables, dependent: :destroy
    has_many :chefs, dependent: :destroy
end
