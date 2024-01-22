Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  resources :proponents
  root 'proponents#index'

  get 'inss/calculation'
  get 'relatory/index'
end
