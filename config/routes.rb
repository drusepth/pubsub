Rails.application.routes.draw do
  devise_for :users

  resources :stories
end