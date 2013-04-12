Kontio::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :administrators
  ActiveAdmin.routes(self)

  resources :users

  resources :forwardings

  resources :domains

  root to: "domains#index"
end
