Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sayings, only: [:index, :show, :create, :update, :destroy]
      resources :users, only: [:show, :create, :update, :destroy]
      resources :regions, only: [:index, :show]
      get '/tags/:saying', to: 'tags#index'
      get '/tags/:id', to: 'tags#show'
      # resources :tags, only: [:show]
    end
  end
end
