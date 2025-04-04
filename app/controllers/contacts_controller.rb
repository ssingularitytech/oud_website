class ContactsController < ApplicationController
 
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = 'Your message has been sent successfully!'
      redirect_to contacts_path
    else
      flash[:alert] = 'There was an error sending your message. Please try again.'
      render :new
    end
  end
  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
