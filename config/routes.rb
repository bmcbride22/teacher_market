Rails.application.routes.draw do
  resources :profiles, only: %i[show], as: :profiles_show do
    resources :transactions, only: %i[index show]
  end

  resources :resources do
    resources :transactions, only: %i[create]
  end

  devise_for :users
  root to: 'resources#home'
end
