Rails.application.routes.draw do
  devise_for :users
  get '/' , to: 'daily_menus#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  # переписать  
  patch 'daily_menus/:id/add_dish' ,as: 'daily_menus_add_dish' , to: 'daily_menus#add_dish'

  resources :dishes 
  resources :categories

  resources :daily_menus do
    resources :daily_menus_dishes , only: :destroy
  end

  namespace :admin do
    resources :users , except: :show
  end  
end
