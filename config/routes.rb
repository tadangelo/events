Rails.application.routes.draw do

  resources :favorites

  resources :attendees
  resources :atendees

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :events


  root :to => 'events#index'
end
