module Admin
  class ProvidersController < ApplicationController
    before_action :set_provider, only: [:show, :edit, :update, :destroy]
  
    # GET /admin/providers
    def index
      @providers = Provider.all
    end
  
    # GET /admin/providers/1
    def show
    end
  
    # GET /admin/providers/new
    def new
      @provider = Provider.new
    end
  
    # GET /admin/providers/1/edit
    def edit
    end
  
    # POST /admin/providers
    def create
      @provider = Provider.new(provider_params)
      @provider.password = SecureRandom.hex(8) # Gera uma senha aleatória de 16 caracteres
      @provider.password_confirmation = @provider.password

      if @provider.save
        # Enviar a senha por email (implementação abaixo)
        ProviderMailer.with(provider: @provider).welcome_email.deliver_later
        redirect_to admin_providers_path, notice: 'Prestador criado com sucesso.'
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /admin/providers/1
    def update
      if @provider.update(provider_params)
        redirect_to admin_providers_path, notice: 'Prestador de serviço atualizado com sucesso.'
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    # DELETE /admin/providers/1
    def destroy
      @provider.destroy
      redirect_to admin_providers_path, notice: 'Prestador de serviço excluído com sucesso.'
    end
  
    private

    def set_provider
      @provider = Provider.find(params[:id])
    end

    def provider_params
      params.require(:provider).permit(
        :first_name, :last_name, :email, :cnpj, :cpf, :phone,
        service_ids: []
      ).tap do |whitelisted|
        # Remove valores vazios do array service_ids
        whitelisted[:service_ids].reject!(&:blank?) if whitelisted[:service_ids]
      end
    end
  end
end