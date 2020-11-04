class Food < ApplicationRecord
    belongs_to :franchise, required: false
    validates :name, presence: true
end
