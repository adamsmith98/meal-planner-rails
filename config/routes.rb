Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :recipes
  resources :shopping_list_items, only: [ :create, :destroy, :index ]

  root "recipes#index"
end
