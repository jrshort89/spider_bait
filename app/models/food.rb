class Food < ApplicationRecord
    belongs_to :franchise

    def franchise_name=(name)
        self.franchise 
    end

    
end
