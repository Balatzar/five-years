Rails.application.routes.draw do
  resources :objectives
  devise_for :users
  resources :groups
  root to: "public_pages#landing"
end
