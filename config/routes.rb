Rails.application.routes.draw do
  resources :events

  get '/events/all', to: 'events#all'
end
