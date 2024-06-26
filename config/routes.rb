Rails.application.routes.draw do
  # get 'authors/index'
  # get 'books/index'
  # get 'articles/index'

  resources :authors do
    resources :books do
      resources :articles
    end
  end

  # get 'users/index'
  resources :users do
    collection do
      get 'main', as: 'main'
    end
  end

  # resources :articles do
  #   resources :comments
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
