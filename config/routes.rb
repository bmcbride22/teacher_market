Rails.application.routes.draw do
  get 'profiles/show/:id', to: 'profiles#show', as: :profiles_show
  resources :resources

  devise_for :users
  root to: 'resources#index'
end
