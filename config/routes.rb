Rails.application.routes.draw do
  get 'player_search/index'
  get  'products/search'
  resources :categories, :except => [:new, :show, :edit]
  resources :profiles, :except => [:new, :show] 
  resources :products, :except => [:new, :show, :edit] 
  resources :users, only: :index
  devise_for :users, :path => '', :path_names => { :sign_in => "sign_in", :sign_out => "logout", :sign_up => "sign_up" }
  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end