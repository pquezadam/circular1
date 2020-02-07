Rails.application.routes.draw do
  get 'geo/findaddress'
root 'stores#index'
  get 'home/index'
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
