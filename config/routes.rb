Rails.application.routes.draw do
  get 'payments/new'

  get 'payments/index'
  get 'get_items' => "payments#ws_get_items"

  resources :products
  resources :payments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
