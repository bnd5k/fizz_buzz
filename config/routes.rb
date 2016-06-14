Rails.application.routes.draw do

  resources :evaluations, only: [:show]

  root 'home#index'

end
