Rails.application.routes.draw do
  devise_for :users
  resources :categories, except: :show do
    resources :tasks, except: :show do
      resources :execution_periods, only: %i[create update]

      member do
        post :complete
        post :proceed
      end
    end
  end

  root 'categories#index'
end
