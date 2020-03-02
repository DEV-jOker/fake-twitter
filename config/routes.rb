Rails.application.routes.draw do
  resources :tweets, only: [:create, :destroy]
  devise_for :users
  root 'pages#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
