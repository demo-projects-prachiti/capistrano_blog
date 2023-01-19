Rails.application.routes.draw do
  resources :posts
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    namespace :api, defaults: {format: :json} do
      namespace :v1, defaults: {format: :json} do
        resources :posts#, only: [:index, :show]
      # resources :embed, only: [:show], defaults: {format: :html}
      # resources :cell, only: [:show]
      end
    end
end
