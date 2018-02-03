Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
     resources :room, only: [:index, :create, :new, :edit, :show, :update, :destroy]
     root to: 'rooms#index'
end
