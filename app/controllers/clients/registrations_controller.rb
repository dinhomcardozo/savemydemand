module Clients
    class RegistrationsController < Devise::RegistrationsController
      # Personalize o comportamento de cadastro, se necessário
      def after_sign_up_path_for(resource)
        clients_dashboard_path # Redireciona para o dashboard dos clientes após o cadastro
      end
  
      def after_inactive_sign_up_path_for(resource)
        new_client_session_path # Redireciona para a página de login após o cadastro inativo
      end
    end
  end