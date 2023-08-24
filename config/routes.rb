Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  devise_for :users

  resources :hats do
    resources :bookings, only: %i[new create edit update destroy]
  end
  resources :bookings, only: %i[index show]

  # Potential custom routes:
  # get 'my_listings', to: 'users#listings'
  # get 'my_bookings', to: 'users#bookings'

  # Defines the root path route ("/")
  # root "articles#index"
end
