Rails.application.routes.draw do

  resources :productos
  resources :marcas
  root 'marcas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
