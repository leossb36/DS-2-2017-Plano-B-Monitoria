Rails.application.routes.draw do

  resources :servicos
  root 'home#index'
  get 'home/index'

  resources :infos
  resources :orcamentos
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
