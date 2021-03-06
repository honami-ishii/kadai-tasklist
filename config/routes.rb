Rails.application.routes.draw do
    root to: 'tasks#index'
    resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
end