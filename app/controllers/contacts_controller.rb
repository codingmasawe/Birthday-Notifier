class ContactsController < ApplicationController

  def show
    @contact = Contact.find(params[:id])
  end

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to @contact
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def update
  end

  def delete
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :birthdate)
  end
end
