Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "home/about" => "homes#about"

  resources :books, only:[:index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :index, :edit, :update]
  # resources :homes, only: [:about]
end
