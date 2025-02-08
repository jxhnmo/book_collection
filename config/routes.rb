Rails.application.routes.draw do
  resources :books
  resources :users
  resources :user_books

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root 'user_books#index' # Set the root route to the UserBooks index page
  
  devise_for :admins, controllers: { omniauth_callbacks:'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as:
  :destroy_admin_session
  end

  resources :books do
    member do
      get :delete # Adds a route like /books/:id/delete
    end
  end
end
