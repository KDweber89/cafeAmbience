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

  # authenticated :user do
  #   root to: "cafes#root"
  # end

  # unauthenticated :user do
  #   root to: 'cafes#index'
  # end

  # resources :users, :only => [:show, :edit]
  # devise_for :users
end
