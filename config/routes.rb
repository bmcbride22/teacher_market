Rails.application.routes.draw do
  resources :resources

  devise_for :users
  devise_scope :user do
    get '/users/:id' => 'users#show', as: :show_user
  end
  root to: 'pages#home'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
