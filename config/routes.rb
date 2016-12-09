Rails.application.routes.draw do

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :employers do
    member do
      get :delete
    end

    # Nested jobs so that employers can create new postings! check rails routes
    resources :jobs do
      member do
        get :delete
      end
    end
  end

  # Nesting apps paths for index, new, create
  resources :jobs, only: [:index, :show] do
    resources :user_applications, only: [:new, :create]
  end

  resources :users do
    member do
      get :delete
    end

    resources :user_applications, only: [:index, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
