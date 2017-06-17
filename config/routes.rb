Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  resources :cafes
  # resources :notes
end
