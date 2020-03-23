Rails.application.routes.draw do

  resources :clients do
    resources :spirals, only: [:create]
  end

  root to: 'pages#home'
end
