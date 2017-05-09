Rails.application.routes.draw do
  devise_for :passengers
  get 'home_page/index'

  root 'home_page#index'



  namespace :admin do
    resources :trains do
      resources :wagons, shallow: true
    end

    resources :railway_stations do
      patch :update_position, on: :member
      patch :update_times, on: :member
    end

    resources :wagons
    resources :routes
    resources :tickets
  end

  resources :tickets
  resource :search, only: [:show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
