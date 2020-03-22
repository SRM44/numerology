Rails.application.routes.draw do

  get 'spirals/show'
  resources :clients do
    resources :spirals, only: [:show]
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
