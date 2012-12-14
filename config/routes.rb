ChicagoTeenMuseum::Application.routes.draw do

  root to: 'high_voltage/pages#show', id: 'home'

  resources :users, :artworks, :galleries

  match '/:id' => 'high_voltage/pages#show', as: :static, via: :get

end
