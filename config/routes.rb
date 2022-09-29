Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :api do
      namespace :v1 do
        # get '/book-search', to: 'books#results'
        resources :sessions, only: [:create]
        get '/forecast', to: 'weather#show'
        resources :users, only: [:create]
        resources :road_trip, only: [:create]
      end
  end
end
