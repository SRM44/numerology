Rails.application.routes.draw do
  get 'clients', to: 'clients#index'

  get 'clients/new', to: 'clients#new'
  post 'clients', to: 'clients#create'

  get 'clients/:id', to: 'clients#show', as: :client

  get 'clients/:id/edit', to: 'clients#edit'
  patch 'clients/:id', to: 'clients#update'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
