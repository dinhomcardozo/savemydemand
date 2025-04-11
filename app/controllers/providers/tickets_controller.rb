module Providers
  class TicketsController < ApplicationController
    before_action :authenticate_provider!

    def index
      @tickets = current_provider.tickets.order(created_at: :desc)
    end

    def show
      @ticket = current_provider.tickets.find(params[:id])
    end

    def update
      @ticket = current_provider.tickets.find(params[:id])
      if @ticket.update(ticket_params)
        redirect_to providers_ticket_path(@ticket), notice: 'Ticket atualizado com sucesso.'
      else
        render :show, status: :unprocessable_entity
      end
    end
    
    private
    
    def ticket_params
      params.require(:ticket).permit(:status)
    end
  end
end