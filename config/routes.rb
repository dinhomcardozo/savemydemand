Rails.application.routes.draw do
  # Rotas do Devise

  #Auth Providers
  devise_for :providers, path: 'providers', controllers: {
    sessions: 'providers/sessions',
    registrations: 'providers/registrations'
  }

  #Auth Clients

  devise_for :clients, path: 'clients', controllers: {
    sessions: 'clients/sessions',
    registrations: 'clients/registrations'
  }

  # Rota raiz
  root "home#index"

  # Namespace Admin
  namespace :admin do
    resources :providers
    resources :clients
    resources :provider_plans
    resources :client_plans

    root "home#index" # Página inicial do namespace admin
  end

  # Namespace Clients
  namespace :clients do
    root "dashboard#index" # Página inicial (dashboard) para clientes
    resources :tickets do
      resources :tickets, only: [:index, :show, :create]
    end
  end

  # Namespace Providers
  namespace :providers do
    root "dashboard#index" # Página inicial (dashboard) para prestadores
    resources :tickets, only: [:index, :show, :update] do
      resources :ticket_messages, only: [:create]
    end

  resources :services, only: [] do
    collection do
      get ":id/providers", to: "services#providers", as: "service_providers"
    end
  end

  end

  # Health check (opcional)
  # get "up" => "rails/health#show", as: :rails_health_check
end