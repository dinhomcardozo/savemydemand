module Clients
  class TicketsController < ApplicationController
    before_action :authenticate_client!

    def index
      @tickets = current_client.tickets.order(created_at: :desc)
    end

    def show
      @ticket = current_client.tickets.find(params[:id])
    end

    def new
      @ticket = current_client.tickets.new
      @providers = Provider.all # Lista de prestadores disponíveis
    end

    def create
      @ticket = current_client.tickets.new(ticket_params)
      if @ticket.save
        redirect_to client_tickets_path, notice: 'Solicitação criada com sucesso.'
      else
        @providers = Provider.all
        render :new, status: :unprocessable_entity
      end
    end

    private

    def ticket_params
      params.require(:ticket).permit(:title, :description, :service_type, :provider_id, :deadline)
    end
  end
end