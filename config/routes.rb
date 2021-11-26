Rails.application.routes.draw do
  resources :profiles, :except => [:new, :show] 
  resources :users, only: :index
  devise_for :users, :path => '', :path_names => { :sign_in => "sign_in", :sign_out => "logout", :sign_up => "sign_up" }
  root to: 'home#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end