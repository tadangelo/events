Rails.application.routes.draw do
  resources :events

  get 'index', to: 'events#index'
  get '/events/all', to: 'events#all'
end
