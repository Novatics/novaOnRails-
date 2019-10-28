Rails.application.routes.draw do
  resources :games
  post '/games/join', as: 'join'
end
