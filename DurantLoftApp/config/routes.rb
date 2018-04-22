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


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
