Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  root to: 'counters#index'
  get '/counter', to: 'counters#index'
  get '/admin', to: 'counters#admin'

  post '/increment', to: 'counters#increment', as: :increment_counter
  post '/modify', to: 'counters#modify', as: :modify_counter
end
