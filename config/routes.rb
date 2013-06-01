Groupmy::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root "groups#index"
  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end
end
