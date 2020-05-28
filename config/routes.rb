Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, only: [:new, :create, :index, :show, :edit, :update]
  resources :artists, only: [:new, :create, :index, :show, :edit, :update]
  resources :genres, only: [:new, :create, :index, :show, :edit, :update]
end
