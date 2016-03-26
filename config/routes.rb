Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    resources :monkeys
    resources :users, only: [:index, :show, :create]
    resources :sessions, only: [:create, :destroy]
  end

  resources :monkeys

end
