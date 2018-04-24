Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :shifts
  resources :items
  resources :users
  root to: "home#index"
  get "shifts/new", to: "shifts#new"
  patch "home/bum", to: "users#bum", as: "bum"
  get "home/inventory", to: "inventory#index", as: "inventory"
  #patch "home/inventory", to: "inventory#index", as: "inventory"

  #Inventory
  #main inventory route

  #Add item
  #Permanent Remove
  #Temprorary Remove: set to temporary to True and leave a note of return date


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
