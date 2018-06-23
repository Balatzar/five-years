Rails.application.routes.draw do
  root to: "public_pages#landing"

  devise_for :users

  resources :objectives do
    member do
      get :delete_ajax
    end
  end
  resources :groups do
    member do
      post :invite_friend
    end
  end
  resources :users, only: :create

  resources :go
end
