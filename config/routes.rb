Rails.application.routes.draw do
  # devise_for :users
  # devise_for :users, :controllers => {:registrations => "registrations"}
  devise_for :users, controllers: {registrations: "registrations"}

  resources :users, :only => [:show]

  get 'welcome/index'
  get '/about', to: 'welcome#about', as: 'about'
  get '/maps', to: 'welcome#maps', as: 'maps'

  resources :cafes
  root 'cafes#root'

  # resources :users, :only => [:show, :edit]
  # devise_for :users
end
