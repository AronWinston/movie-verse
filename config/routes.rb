Rails.application.routes.draw do
  get '/movies' => 'movies#index', as: 'movies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\
  get '/movies/:id' => 'movies#show', as: 'movie'
end
