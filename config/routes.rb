Rails.application.routes.draw do
  devise_for :users

  root to:"atbats#index" 
  resources :atbats, only: [:index, :new, :create]
  resources :games, only: [:new, :create]

end
