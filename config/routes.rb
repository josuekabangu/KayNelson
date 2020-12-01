Rails.application.routes.draw do

  resources :users
  get "upload" => "images#new", :as => "upload"

  resources :images
  resources :categories
  root 'images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
