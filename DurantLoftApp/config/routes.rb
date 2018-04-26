Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get "shifts/showdate/:date", to: "shifts#showdate", as: "showdate_shift"

  resources :shifts
  resources :items
  resources :users
  root to: "home#index"
  get "shifts/new", to: "shifts#new"

  patch "home/bum", to: "users#bum", as: "bum"
  patch "home/form", to: "users#new", as: "form"
  get "home/form", to: "users#new"
  patch "home/foosball", to: "home#foosball", as: "foosball"
  patch "home/pingpong", to: "home#pingpong", as: "pingpong"
  patch "home/dt", to: "home#dt", as: "dt"

  #post "inventory/add_item", to: "inventory#new", as: "new"
  #post "add_item", to: "inventory#new", as: "new"
  #get "/items/new" to: "items#new"
  post "inventory/new", to: "items#create", as: "create_item"
  delete "inventory/remove", to: "items#destroy", as: "destroy_item"
  #get "inventory/remove", to: "item#destroy", as: "destroy_item"
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
get "security", to: "security#index", as: "security"


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
