Rails.application.routes.draw do
  # Definir rutas de documentales
  resources :documentary_films

  # Definir rutas de películas
  resources :videos
  # Definir rutas de series
  resources :series

  # Ruta de root
  root "documentary_films#index"

  # Rutas para verificación de salud y archivos PWA
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
