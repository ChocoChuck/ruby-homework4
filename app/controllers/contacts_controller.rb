class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    @contact = Contact.new
  end

  def about_me
  end

  def new
  @contact = Contact.new
  end 

  def create
    puts params.inspect
    @contact = Contact.create(params[:contact].permit(:name, :email))
  end

  def yourContacts
    @contacts = Contact.all    
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(params[:contact].permit(:name, :email))
  end
end
