Rails.application.routes.draw do
  root "articles#index"
 
  get 'articles/:id', to: 'articles#show'


  resources :articles
  
  # Defines the root path route ("/")
end
