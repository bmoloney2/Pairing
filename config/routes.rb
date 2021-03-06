Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'posts#index'
    end

    unauthenticated :user do
      root to: 'devise/sessions#new'
    end
  end

  resources :users
  resources :posts
  # resources :edit

  # get 'home/logout'
  # post 'post/edit'
end
