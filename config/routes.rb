Rails.application.routes.draw do

  devise_for :users
 root 'technologies#index'

 resources :users, only: [:index, :show]
 resources :followings, only: [:index, :create , :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 resources :technologies, only: [:create, :index]
 get 'pages/info'
end
