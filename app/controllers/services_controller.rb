class ServicesController < ApplicationController
    def providers
        service = Service.find(params[:id])
        providers = service.providers.select(:id, :email)
        render json: providers
    end
end