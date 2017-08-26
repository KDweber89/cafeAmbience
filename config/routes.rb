Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'
  get '/about', to: 'welcome#about', as: 'about'
  get '/maps', to: 'welcome#maps', as: 'maps'

  resources :cafes
  root 'welcome#index'

  resources :users, :only => [:show, :edit]
end
