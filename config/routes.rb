Rails.application.routes.draw do
  devise_for :users

  scope '/search', controller: :search do
    post 'results'
  end

  resources :stories
  resources :solicitations
  resources :publishers

  root to: 'search#index'
end
