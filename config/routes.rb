Rails.application.routes.draw do
  require 'sidekiq/web'
  root 'rooms#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'
  mount Sidekiq::Web => '/sidekiq'
end
