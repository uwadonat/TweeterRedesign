Rails.application.routes.draw do

  devise_for :users
 root 'technologies#index'

 resources :users, only: [:index, :show]
 resources :followings, only: [:index, :create , :destroy, :update]
 resources :technologies, only: [:create, :index] do
 resources :likes, only: [:create, :destroy]
  end
 get 'pages/info'
end
