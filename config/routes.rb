OdinKittens::Application.routes.draw do
  root to: 'KittensController#index'

  resources :kittens
  # match ':controller(/:action(/:id))(.:format)'
end
