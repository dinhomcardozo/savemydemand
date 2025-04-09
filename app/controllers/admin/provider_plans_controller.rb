class Admin::ProviderPlansController < ApplicationController
    before_action :set_provider_plan, only: [:show, :edit, :update, :destroy]
  
    def index
      @provider_plans = ProviderPlan.all
    end
  
    def show
    end
  
    def new
      @provider_plan = ProviderPlan.new
    end
  
    def edit
    end
  
    def create
      @provider_plan = ProviderPlan.new(provider_plan_params)
  
      if @provider_plan.save
        redirect_to admin_provider_plans_path, notice: 'Plano de prestador criado com sucesso.'
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def update
      if @provider_plan.update(provider_plan_params)
        redirect_to admin_provider_plans_path, notice: 'Plano de prestador atualizado com sucesso.'
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      @provider_plan.destroy
      redirect_to admin_provider_plans_path, notice: 'Plano de prestador excluído com sucesso.'
    end
  
    private
  
    def set_provider_plan
      @provider_plan = ProviderPlan.find(params[:id])
    end
  
    def provider_plan_params
      params.require(:provider_plan).permit(:description, :price, :duration_in_months, :payment_date, :start_date, :end_date, :status)
    end
  end