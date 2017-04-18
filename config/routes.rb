Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'

  resources :posts do
    resources :comments
  end

  resources :users, only: [:show, :index]

  root 'posts#index'

end
