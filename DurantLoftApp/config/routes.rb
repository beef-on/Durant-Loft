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

  # ----
  # get "/koinberkeley.org", to: "koinberkeley.org"
# =======

  # patch "bum", to: "users#bum", as: "bum"
  # patch "form", to: "users#new", as: "form"
  # get "form", to: "users#new"


  patch "index", to: "home#index", as: "index"


# <<<<<<< HEAD
# >>>>>>> 431158230486fa1e1e4816bf85e52e232fdd9211
# =======

  

  patch "inventory/index", to: "home#index", as: "home"
  get "inventory", to: "inventory#index", as: "inventory"
  #patch "home/inventory", to: "inventory#index", as: "inventory"
# >>>>>>> 996309656c7066ad2f4e5cc7259f8a3b11fddc0d
  #Inventory
  #main inventory route

  #Add item
  #Permanent Remove
  #Temprorary Remove: set to temporary to True and leave a note of return date

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end 
