Rails.application.routes.draw do
  devise_for :users
  resources :tasks, only: %i[index new create edit update]

  root 'tasks#index'
end
