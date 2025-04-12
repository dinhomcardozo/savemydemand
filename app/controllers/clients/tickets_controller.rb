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
      @services = Service.all
    end

    def create
      @ticket = current_client.tickets.new(ticket_params)
      if @ticket.save
        redirect_to client_tickets_path, notice: 'Solicitação criada com sucesso.'
      else
        @services = Service.all
        render :new, status: :unprocessable_entity
      end
    end

    private

    def ticket_params
      params.require(:ticket).permit(:title, :description, :service_id, :provider_id, :deadline)
    end
  end
end