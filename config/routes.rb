Rails.application.routes.draw do

 
 root to: 'home#link_to_logout'

 resources :user
 resources :post

 get 'home/logout'
 post 'post/edit'

 devise_for :users
end
