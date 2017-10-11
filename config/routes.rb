Rails.application.routes.draw do
  devise_for :users

  scope '/search', controller: :search do
    get 'results'
  end

  resources :stories
  resources :solicitations
  resources :publishers
  resources :comments
  resources :publisher_bookmarks
  resources :solicitation_bookmarks

  root to: 'search#index'
end
