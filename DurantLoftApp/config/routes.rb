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



  patch "index", to: "home#index", as: "index"

  get "security", to: "security#index", as: "security"


  patch "inventory/index", to: "home#index", as: "home"
  get "inventory", to: "inventory#index", as: "inventory"

  post "rides", to: "events#rides"
  get "rides", to: "home#events"
  # post "rides", to: "events#riders"

  #Add item
  #Permanent Remove
  #Temprorary Remove: set to temporary to True and leave a note of return date

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
