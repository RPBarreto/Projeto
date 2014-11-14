class ContactMailer < ActionMailer::Base
  default :from => 'nao.responda.ifrs.riogrande@gmail.com'

  def contact_message(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => @contact.subject)
  end
end