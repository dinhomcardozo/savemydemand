class Admin::ClientPlansController < ApplicationController
    before_action :set_client_plan, only: [:show, :edit, :update, :destroy]
  
    def index
      @client_plans = ClientPlan.all
    end
  
    def show
    end
  
    def new
      @client_plan = ClientPlan.new
    end
  
    def edit
    end
  
    def create
      @client_plan = ClientPlan.new(client_plan_params)
  
      if @client_plan.save
        redirect_to admin_client_plans_path, notice: 'Plano de cliente criado com sucesso.'
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def update
      if @client_plan.update(client_plan_params)
        redirect_to admin_client_plans_path, notice: 'Plano de cliente atualizado com sucesso.'
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      @client_plan.destroy
      redirect_to admin_client_plans_path, notice: 'Plano de cliente excluído com sucesso.'
    end
  
    private
  
    def set_client_plan
      @client_plan = ClientPlan.find(params[:id])
    end
  
    def client_plan_params
      params.require(:client_plan).permit(:description, :price, :duration_in_months, :payment_date, :start_date, :end_date, :status)
    end
  end