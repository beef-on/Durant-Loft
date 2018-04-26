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
  patch "events", to: "events#events", as: "events"
  post "events", to: "events#create", as: "event"
  get "/events", to: "home#events"
  post "home/meetup", to: "home#index"
  post "users/event", to: "home#index"
  post "inventory/new", to: "items#create", as: "create_item"

  patch "inventory/remove", to: "items#destroy", as: "destroy_item"
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

  post "rides", to: "events#rides"
  get "rides", to: "events#rides"
  post "rides", to: "events#riders"

  #Add item
  #Permanent Remove
  #Temprorary Remove: set to temporary to True and leave a note of return date

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
