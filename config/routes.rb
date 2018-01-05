Rails.application.routes.draw do
  resources :events

  get 'index', to: 'events#index'
end
