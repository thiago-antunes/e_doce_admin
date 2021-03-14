Rails.application.routes.draw do
  resources :produtos
  root to: 'home#index'
  get '/home', to:'home#index'
  resources :tipo_produtos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
