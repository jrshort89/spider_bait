class Franchise < ApplicationRecord
    has_many :foods
    validates :name, :costume, presence: true
end
