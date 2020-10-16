Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cors
  match '/', to: "welcome#index", via: [:get, :post, :put, :delete, :options, :head, :patch]
  match '/*glob', to: "welcome#index", via: [:get, :post, :put, :delete, :options, :head, :patch]
end
