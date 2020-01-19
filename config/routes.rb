Rails.application.routes.draw do
  root "manufacturing_statuses#index"
  resources :manufacturing_statuses, only: [:index, :new, :create, :show, :update] do
  end
  resources :brands, only: [:index, :new, :create] do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
