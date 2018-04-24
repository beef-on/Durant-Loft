Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :shifts
  resources :items
  resources :users
  root to: "home#index"
  get "shifts/new", to: "shifts#new"
  patch "bum", to: "users#bum", as: "bum"
  patch "form", to: "users#new", as: "form"
  get "form", to: "users#new"

  patch "index", to: "home#index", as: "index"

  patch "inventory/index", to: "home#index", as: "home"
  get "inventory", to: "inventory#index", as: "inventory"
  #patch "home/inventory", to: "inventory#index", as: "inventory"
  #Inventory
  #main inventory route

  #Add item
  #Permanent Remove
  #Temprorary Remove: set to temporary to True and leave a note of return date

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
