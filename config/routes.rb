Rails.application.routes.draw do
  resources :companies do
    resources :locations
    resources :products do
      resources :reviews
      end
    end

  resources :locations

root 'companies#index'

end
