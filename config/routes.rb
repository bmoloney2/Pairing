Rails.application.routes.draw do
 
 root to: 'home#login'

 resources :user
 resources :post

 get 'home/logout'

end
