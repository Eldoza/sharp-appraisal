class ContactMailer < ApplicationMailer

  def send_contact(contact)
    @contact = contact
    mail(to: 'cmend85@gmail.com', subject: 'New Client Form')
  end
end
