Rails.application.routes.draw do
  root "articles#index"
 
  get 'public', to: "articles#index"
  # get 'articles/:id', to: 'articles#show'


  resources :articles do
    resources :comments
  end
  
  # Defines the root path route ("/")
end
