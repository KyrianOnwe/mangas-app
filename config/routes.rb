# Rails.application.routes.draw do
#   resources :mangas
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   root "mangas#index"
# end

# config/routes.rb
Rails.application.routes.draw do
  namespace :api do
    resources :recipes, only: [:index, :create]
    post "/signup", to: "users#create"
    get "/me", to: "users#show"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  end

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end