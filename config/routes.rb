Rails.application.routes.draw do

  root to:"atbats#index" 
  resources :atbats, only: [:index, :new, :create]
  resources :games, only: [:new, :create]

end
