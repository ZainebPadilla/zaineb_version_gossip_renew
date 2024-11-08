Rails.application.routes.draw do
  get "gossip/index"
  get "gossip/show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
 root "gossip#index"

  get 'team', to: 'static_page#team'
  get 'contact', to: 'static_page#contact'
  get 'welcome/:name', to: 'static_page#welcome'

end