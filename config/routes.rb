Rails.application.routes.draw do
  resources :pedidos do
  	resources :pedido_produtos
  end
  get '/pedidos/:id/destroy', to:'pedidos#destroy'

  resources :clientes
  get '/clientes/:id/destroy', to:'clientes#destroy'

  resources :produtos
  get '/produtos/:id/destroy', to:'produtos#destroy'

  root to: 'home#index'

  get '/home', to:'home#index'

  resources :tipo_produtos
  get '/tipo_produtos/:id/destroy', to:'tipo_produtos#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
