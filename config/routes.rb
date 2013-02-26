ChicagoTeenMuseum::Application.routes.draw do

  root to: 'galleries#index'

  resources :users, :artworks, :galleries

  get '/about' => 'high_voltage/pages#show', id: 'about'

end
