Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :shifts
  resources :items
  resources :users
  root to: "home#index"
  get "shifts/new", to: "shifts#new"
  patch "home/bum", to: "users#bum", as: "bum"
  patch "home/form", to: "users#new", as: "form"
  get "home/form", to: "users#new"
# <<<<<<< HEAD
  patch "home/foosball", to: "home#foosball", as: "foosball"
  patch "home/pingpong", to: "home#pingpong", as: "pingpong"
  patch "home/dt", to: "home#dt", as: "dt"
# =======

  patch "home/index", to: "home#index", as: "index"
  patch "inventory/index", to: "home#index", as: "home"

# >>>>>>> 431158230486fa1e1e4816bf85e52e232fdd9211
  #Inventory
  #main inventory route
  get "inventory", to: "inventory#index"
  #Add item
  #Permanent Remove
  #Temprorary Remove: set to temporary to True and leave a note of return date

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end 
