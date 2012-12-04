ChicagoTeenMuseum::Application.routes.draw do

  root to: 'high_voltage/pages#show', id: 'home'

  resources :users, :artworks, :galleries

end
