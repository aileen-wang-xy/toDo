Rails.application.routes.draw do


  resources :users
  get 'tasks/index'

  get 'tasks/new'

  root 'welcome#index'
  get 'welcome/index'
  
  resources :sessions, only: [:new, :create, :destroy]
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  
  resources :users
  get 'signup', to: 'users#new'
  
  
  resources:tasks
  get '/tasks/:id/complete/:completed', to:'tasks#complete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
