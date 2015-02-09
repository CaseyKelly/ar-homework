Rails.application.routes.draw do
  resources :companies do
    resources :locations
    resources :products do
      resources :reviews
      end
    end

  resources :locations
  resources :products
  resources :reviews

root 'companies#index'

end
