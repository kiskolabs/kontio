Kontio::Application.routes.draw do
  devise_for :administrators

  resources :users

  resources :forwardings

  resources :domains

  root to: "domains#index"
end
