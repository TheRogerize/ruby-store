Rails.application.routes.draw do
  get 'users/profile'
  get 'users/show'
  get 'user/profile'
  # get '/shared/errors/_sign'
  # get '/shared/errors/__error'
  get 'home/new'
  get 'home/home'
  devise_for :users, :path => '', :path_names => { :sign_in => "sign_in", :sign_out => "logout", :sign_up => "sign_up" }
  resources :users
  # devise_for :views
  # devise_for :users
  resources :products
  
  get '/shared/_header'
  root to: 'home#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end