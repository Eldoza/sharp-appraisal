class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_contact(@contact).deliver_now
      flash[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name,:email,:message,:nickname)
    end
end
