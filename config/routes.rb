Rails.application.routes.draw do
  devise_for :users
  resources :tasks, only: %i[index new create]

  root 'tasks#index'
end
