Rails.application.routes.draw do
  resources :stocks, only: [:index, :create]
  resources :average_prices, only: [:index, :show] do
    resources :stocks, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
