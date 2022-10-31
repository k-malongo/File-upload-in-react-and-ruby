Rails.application.routes.draw do
  resources :redflags
  # get "latest", to: 'redflags/latest'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
