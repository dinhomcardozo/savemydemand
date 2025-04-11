module Providers
    class RegistrationsController < Devise::RegistrationsController
      before_action :configure_permitted_parameters

      # Personalize o comportamento de cadastro, se necessário
      def after_sign_up_path_for(resource)
        providers_root_path # Redireciona para o dashboard dos prestadores após o cadastro
      end
  
      def after_inactive_sign_up_path_for(resource)
        new_provider_session_path # Redireciona para a página de login após o cadastro inativo
      end

      protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, service_ids: []])
      end
    end
  end