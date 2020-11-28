Rails.application.routes.draw do
  resources :teams
  resources :projects
  devise_for :users
  root 'home#index'

end
