Rails.application.routes.draw do
  get 'register/', to: 'register#index'
  get 'session/login', to: 'session#new', as: :login
  post 'session/login', to: 'session#create', as: nil
  delete 'session/logout', to: 'session#destroy', as: :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :messages, only: [:index]
  resources :register, only: [:index, :create]
  # resources :session, only: [:new, :create, :destroy as: nil]
end
