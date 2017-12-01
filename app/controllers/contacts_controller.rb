class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Obrigado pela mensagem. Nós faremos contato em breve!'
    else
      flash.now[:error] = 'Impossível enviar a mensagem.'
      render :new
    end
  end
end
