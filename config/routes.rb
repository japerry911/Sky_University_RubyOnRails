Rails.application.routes.draw do
  root "courses#index"
  get "courses/new", to: "courses#new"
  get "about", to: "pages#about"
  resources :students, only: [:index, :new, :create, :show, :edit, :update]
end
