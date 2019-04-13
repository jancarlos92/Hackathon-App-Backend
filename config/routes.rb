Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
          resources :users, only: [:index, :create, :edit, :update]

          resources :practioners, only: [:index, :create]

          resources :checkups, only: [:index, :create, :edit, :update]
     end
  end


end
