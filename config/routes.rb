Rails.application.routes.draw do

  get "map", to: "destinations#map"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :destinations do
    resources :menus, only: [:show]
  end
end
