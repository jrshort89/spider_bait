class ApplicationController < ActionController::Base
    def home
    end

    def analytics
        @prices = []
    end
end
