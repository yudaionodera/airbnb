Rails.application.routes.draw do
     devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
     resources :room, only: [:index, :create, :new, :edit, :show, :update, :destroy]
     resources :user, only: [:edit, :update]
     resources :reservations, only: [:create,:new,:edit,:updates,:destroy]
     root to: 'room#index'
end
