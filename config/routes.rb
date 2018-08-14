Rails.application.routes.draw do
  devise_for :users
  get 'persons/profile', as: 'user_root'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  patch 'daily_menus/:id/add_dish' ,as: 'daily_menus_add_dish' , to: 'daily_menus#add_dish'
  resources :daily_menus
  resources :dishes
  resources :categories
end
