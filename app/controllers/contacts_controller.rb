  class ContactsController < ApplicationController
  
    def new
      @contact = Contact.new
    end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.with(contact: @contact, email: 'admin@example.com').send_contact_mail.deliver_now
      redirect_to contacts_path, notice: 'Your message has been sent successfully!'
    else
      flash.now[:alert] = 'There was an error sending your message. Please try again.'
      render :new, status: :unprocessable_entity
    end
  end

    private

    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
  end
