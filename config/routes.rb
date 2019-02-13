Rails.application.routes.draw do
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  
  devise_for :users, :controllers => { registrations: 'registrations' }
>>>>>>> origin
  root to: "home#index"
end
