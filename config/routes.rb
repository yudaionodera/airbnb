Rails.application.routes.draw do
     devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
     resources :rooms, only: [:index, :create, :new, :edit, :show, :update, :destroy]
     resources :user, only: [:edit, :update]
     root to: 'rooms#index'
end
