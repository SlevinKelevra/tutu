Rails.application.routes.draw do
  get 'home_page/index'

  root 'home_page#index'

  resources :trains
  resources :railway_stations do
    patch :update_position, on: :member
  end
  resources :routes
  resources :tickets
  resources :wagons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
