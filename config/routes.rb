Rails.application.routes.draw do

  resources :orcamentos
  resources :servicos
  resources :faleconosco
  root 'home#index'
  get 'home/index'

  resources :infos
  devise_for :users
  get 'contact-me', to: 'messages#new', as: 'new_message'
    post 'contact-me', to: 'messages#create', as: 'create_message'
end
