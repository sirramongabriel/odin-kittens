OdinKittens::Application.routes.draw do
  root to: 'Kittens#index'

  resources :kittens
  # match ':controller(/:action(/:id))(.:format)'
end
