Rails.application.routes.draw do
  resources :orcamentos
  resources :servicos
  resources :faleconosco
  resources :servicos, only: [:new, :create, :edit, :update]
  resources :orcamentos, only: [:new, :create, :edit, :update]
  root 'home#index'
  get 'home/index'

  resources :infos
  devise_for :users
  get 'contact-me', to: 'messages#new', as: 'new_message'
    post 'contact-me', to: 'messages#create', as: 'create_message'

  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
