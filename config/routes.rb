Rails.application.routes.draw do

 devise_for :admin, controllers: {
  sessions:      'admin/sessions',
  passwords:     'admin/passwords',
  registrations: 'admin/registrations'
}
devise_for :customers, controllers: {
  sessions:      'public/sessions',
  passwords:     'public/passwords',
  registrations: 'public/registrations'
}

  namespace :admin do
    resources :orders, only: [:show, :update]
    get "/" => "homes#top"
    resources :customers, only: [:index, :show, :edit, :update]
    resources :genres, only: [:index, :edit, :create, :update]
    resources :items, only: [:index, :create, :new, :show, :edit, :update]
    resources :order_details, only: [:update]
    get "/search" => "items#search"
  end
  scope module: :public do
    resources :shipping_addresses, only: [:index, :create, :destroy, :edit, :update]
    get "/customers/unsubscribe" => "customers#unsubscribe"
    patch "/customers/withdraw" => "customers#withdraw"
    resource :customers, only: [:show, :update, :edit]
    post "/orders/confirm" => "orders#confirm"
    get "/orders/thanks" => "orders#thanks"
    resources :orders, only: [:new, :create, :show, :index]
    delete "/cart_items/destroy_all" => "cart_items#destroy_all"
    resources :cart_items, only: [:index, :create, :destroy, :update]
    resources :items, only: [:index, :show]
    root "homes#top"
    get "/about" => "homes#about"
  end

end