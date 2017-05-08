Rails.application.routes.draw do
  get 'home_page/index'

  root 'home_page#index'

  resources :trains do
    resources :wagons, shallow: true
  end
  
  resources :railway_stations do
    patch :update_position, on: :member
    patch :update_times, on: :member
  end

  resources :routes
  resources :tickets
  resources :wagons
  resource :search, only: [:show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
