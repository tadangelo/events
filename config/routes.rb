Rails.application.routes.draw do
  get 'pages/dashboard'

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :events


  root :to => 'events#index'
end
