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
  resources :jobs, only: [:index, :show] do
    resources :user_applications, only: [:new, :create, :index, :show, :delete] do
    end
  end

  resources :users do
    member do
      get :delete
    end
    resources :user_applications, only: [:index, :show] do
    end
    resources :user_history_of_employments
    resources :user_history_of_educations, only: [:edit]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
