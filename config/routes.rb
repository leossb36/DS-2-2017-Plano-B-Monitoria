Rails.application.routes.draw do
  resources :orcamentos
  resources :servicos
  resources :servicos, only: [:new, :create, :edit, :update]
  resources :orcamentos, only: [:new, :create, :edit, :update]
  root 'home#index'
  get 'home/index'

  resources :infos
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
