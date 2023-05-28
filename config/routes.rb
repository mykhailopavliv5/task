Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }

  root "tasks#index"
  resources :tasks do
    get 'logs', on: :member
  end
end
