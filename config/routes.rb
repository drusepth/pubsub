Rails.application.routes.draw do
  devise_for :users

  scope '/search', controller: :search do
    get 'results'
  end

  resources :stories
  resources :solicitations
  resources :publishers
  resources :comments

  root to: 'search#index'
end
