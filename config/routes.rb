Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :genres do
        resources :family_trees
      end
      resources :animals
      resources :users do
        collection do
          get "login"
        end
      end
      resources :tweets
      resources :posts do
        resources :purchases
        resources :comments
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
