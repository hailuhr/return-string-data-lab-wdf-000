Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :products
  resources :orders
  resources :invoices

  get "/products/:id/description", to: "products#description"

  get "/products/:id/inventory", to: "products#inventory"
end
