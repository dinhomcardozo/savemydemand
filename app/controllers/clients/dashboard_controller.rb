module Clients
    class DashboardController < ApplicationController
      before_action :authenticate_client!
  
      def index
        @tickets = current_client.tickets.order(created_at: :desc)
      end
    end
  end