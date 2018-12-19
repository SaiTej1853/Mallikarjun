Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
      	
        resources :products, only: [:index]
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match ':controller(/:action(/:id))', :via=>[:get, :post]
end
