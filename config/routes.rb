Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'upload/direct_post'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cors
  # match '/', to: "welcome#index", via: [:get, :post, :put, :delete, :options, :head, :patch]
  # match '/*glob', to: "welcome#index", via: [:get, :post, :put, :delete, :options, :head, :patch]
  root 'hello_world#index'
end
