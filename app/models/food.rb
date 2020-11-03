class Food < ApplicationRecord
    belongs_to :franchise, required: false

    def franchise_name=(name)
        self.franchise 
    end 
end
