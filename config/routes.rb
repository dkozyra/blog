Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "articles#index"
  
  resources :articles do
    resources :comments
  end
  
  mount ActionCable.server => '/cable'
end
