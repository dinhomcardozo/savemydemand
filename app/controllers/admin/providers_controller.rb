class Admin::ProvidersController < ApplicationController
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
  
      if @provider.save
        redirect_to admin_providers_path, notice: 'Prestador de serviço cadastrado com sucesso.'
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
  
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def provider_params
      params.require(:provider).permit(:first_name, :last_name, :cnpj, :cpf, :email, :phone, :voiceover, :acting, :editing, :recording)
    end
  end