Rails.application.routes.draw do
  resources :afternoon_forms
  resources :morning_forms
  devise_for :users
  resources :users
  resources :teams
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "rails_admin/main#dashboard"
end
