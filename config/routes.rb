Rails.application.routes.draw do

 
 root to: 'home#login'

 resources :user
 resources :post

 get 'home/logout'
 post 'post/edit'

 devise_for :users
root to: "home#login"
end
