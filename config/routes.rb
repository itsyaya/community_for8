Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'custom_registrations',
    sessions: 'custom_sessions',
  }

  root 'posts#index'

  resources :users, except: [:new, :create] do
    member do
      patch :update_roles # Custom route to update user roles
    end
  end

  resources :categories
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
end
