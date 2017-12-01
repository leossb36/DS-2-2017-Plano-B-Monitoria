Rails.application.routes.draw do
  resources :orcamentos
  resources :servicos
  resources :faleconosco
  resources :servicos, only: [:new, :create, :edit, :update]
  resources :orcamentos, only: [:new, :create, :edit, :update]
  root 'home#index'
  get 'home/index'

  resources :about
  resources :infos
  devise_for :users
 


  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]


  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
