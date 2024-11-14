Rails.application.routes.draw do
  devise_for :users

  resource :dashboard, only: [ :show ]

  namespace :admin do
    resources :properties
    resources :property_standard_items, except: [ :show ]
    resources :property_situations, except: [ :show ]
    resources :property_types, except: [ :show ]
  end

  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "dashboards#go_to_home"
end
