module Clients
    class SessionsController < Devise::SessionsController
      # Personalize o comportamento de login/logout, se necessário
      
      protected
      
      def after_sign_in_path_for(resource)
        clients_root_path # Redireciona para o dashboard dos clientes após o login
      end
  
      def after_sign_out_path_for(resource_or_scope)
        new_client_session_path # Redireciona para a página de login após o logout
      end
    end
  end