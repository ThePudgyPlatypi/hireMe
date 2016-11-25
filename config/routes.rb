Rails.application.routes.draw do
  resources :applications do
    member do
      get :delete
    end
  end

  resources :jobs do
    member do
      get :delete
    end
  end

  resources :employers do
    member do
      get :delete
    end
    resources :jobs, only: [:index, :new, :create]
  end

  resources :users do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
