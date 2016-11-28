Rails.application.routes.draw do

  resources :apps do
    member do
      get :delete
    end
  end

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

  resources :jobs do
    member do
      get :delete
    end
  end

  resources :users do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
