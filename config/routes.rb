Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts, only: ['index','new','create']
  root to: "main#index"

  post :"posts", to: "posts#create"
  get "create_posts", to: "posts#create"
end
