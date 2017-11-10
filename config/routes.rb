Rails.application.routes.draw do

  resources :orcamentos
  resources :servicos
  resources :faleconosco
  root 'home#index'
  get 'home/index'

  resources :infos
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
