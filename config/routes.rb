Rails.application.routes.draw do
  get "creatives/index"
  devise_for :users
  resources :schools
  root "schools#index"
  resources :comments, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
