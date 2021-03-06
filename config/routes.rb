Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      resources :products
      root 'products#index', as: :authenticated_root
    end

    unauthenticated :user do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
