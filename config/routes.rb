Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  get '/about', to: 'welcome#about', as: 'about'


  resources :cafes

  root 'welcome#index'
end
