Rails.application.routes.draw do
  resources :beers
  post 'best-style', to: 'beers_calculator#findBestStyle'
end
