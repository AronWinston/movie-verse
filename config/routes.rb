Rails.application.routes.draw do
  get '/movies' => 'movies#index', as: 'movies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\
  get '/movies/:id' => 'movies#show', as: 'show_page'
  get 'show' => 'movies#show', as: 'show'

  resources :movies
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "home#index"
end
