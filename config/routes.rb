Rails.application.routes.draw do
  get '/movies' => 'movies#index', as: 'movies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\
  get '/movies/:id' => 'movies#show', as: 'movie'
  get '/search/' => 'movies#search', as: 'search_page'
  resources :movies
  get 'movies_association/index'
  get 'movies_association/show'
  get 'movies_association/edit'
  get 'movies_association/new'
  get 'movies_association/create'
  get 'movies_association/update'
  get 'movies_association/destroy'
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "home#index"
end
