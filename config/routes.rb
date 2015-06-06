Rails.application.routes.draw do

  root to: 'home#show'

  post '/throw/(:sign)', to: 'home#throw', as: "throw"

end
