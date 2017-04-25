Rails.application.routes.draw do
  root "access#index"

  # Route for the choice between user or employer
  get "access/signup_choice"
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
  resources :jobs, only: [:index, :show], shallow: true do
    resources :user_applications, only: [:new, :create, :index, :show, :delete], shallow: true do
    end
  end

  resources :users, shallow: true do
    member do
      get :delete
    end

    resources :user_applications, shallow: true, only: [:index, :show]
    resources :user_history_of_employments, shallow: true, only: [:new, :create, :delete, :show]
    resources :user_history_of_educations, shallow: true, only: [:new, :create, :delete, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
