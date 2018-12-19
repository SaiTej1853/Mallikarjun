Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'products/index'
  get 'products/show'
  get 'products/edit'
  get 'products/delete'
  get 'products/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
  match ':controller(/:action(/:id))', :via=>[:get, :post]	
end
