Kontio::Application.routes.draw do
  resources :users

  resources :forwardings

  resources :domains

  root to: "domains#index"
end
