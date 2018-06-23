Rails.application.routes.draw do
  root 'gasolina_alcool#index'
  get 'convert', to: 'gasolina_alcool#convert'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
