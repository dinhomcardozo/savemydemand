module Providers
    class DashboardController < ApplicationController
      before_action :authenticate_provider!
  
      def index
        @tickets = current_provider.tickets.order(created_at: :desc)
      end
    end
  end