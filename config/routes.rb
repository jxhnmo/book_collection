Rails.application.routes.draw do
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :books do
    member do
      get :delete # Adds a route like /books/:id/delete
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end

