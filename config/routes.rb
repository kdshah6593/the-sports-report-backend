Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
      resources :teams, only: [:index, :show, :create, :destroy]
      resources :players, only: [:index, :show, :create, :destroy]
      post '/login', to: 'auth#create'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
