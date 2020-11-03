Rails.application.routes.draw do
  resources :foods, only: [:index, :show, :new, :create]
  get '/', to: 'application#home', as: 'home'
  # get '/foods', to: 'foods#index', as: 'foods'
  # get '/foods/new', to: 'foods#new', as: 'new_food'
  # get '/foods/:id', to: 'foods#show', as: 'food'
  # post '/foods', to: 'foods#create'
  resources :franchises, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
