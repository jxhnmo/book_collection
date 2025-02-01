Rails.application.routes.draw do
  resources :books
  resources :users
  resources :user_books

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root 'user_books#index' # Set the root route to the UserBooks index page
  
  resources :books do
    member do
      get :delete # Adds a route like /books/:id/delete
    end
  end
end
