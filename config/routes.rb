Rails.application.routes.draw do
  get '/', to: 'application#home', as: 'home'
  get '/foods', to: 'foods#index', as: 'foods'
  get '/foods/:id', to: 'foods#show', as: 'food'
  get '/foods/new', to: 'foods#new'
  post '/foods', to: 'foods#create'
  resources :franchises, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
