Rails.application.routes.draw do
  devise_for :users
  resources :tasks, except: :show do
    resources :execution_periods, only: %i[create update]

    member do
      post :complete
      post :proceed
    end
  end

  root 'tasks#index'
end
