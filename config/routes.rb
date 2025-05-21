Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :recipes
  resources :shopping_list_items, only: [ :create, :update, :index ]

  root "recipes#index"
end
