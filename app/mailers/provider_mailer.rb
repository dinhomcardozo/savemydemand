class ProviderMailer < ApplicationMailer
    default from: 'no-reply@savemydemand.com'
  
    def welcome_email
      @provider = params[:provider]
      @password = @provider.password
      mail(to: @provider.email, subject: 'Bem-vindo ao SaveMyDemand - Sua Senha Provisória')
    end
  end