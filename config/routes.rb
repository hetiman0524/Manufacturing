Rails.application.routes.draw do
  root to: "manufacturing_statuses#index"
  resources :brands, only: [:index, :new, :create] do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end