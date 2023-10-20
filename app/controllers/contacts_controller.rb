class ContactsController < ApplicationController
  before_action :authenticate_user
  before_action :contact, only:[:show, :update, :destroy]
 
  def index
    @contacts = current_user.contacts
    render :index 
  end

  def create
    @contact = Contact.create(contact_params)
    @contact.user_id = current_user.id
    
    @contact.save
    render :show
  end

  def update
    @contact.update(
      name: params[:name] || @contact.name,
      email_address: params[:email_address] || @contact.email_address,
      contact_type: params[:contact_type] || @contact.contact_type,
    )
    render :show
  end

  def destroy
    @contacts = Contact.find_by(id: params[:id])
    @contacts.destroy
    render json: { message: "Contact successfully deleted" }
  end

  def contact_params
    params.permit(:name, :email_address, :contact_type)
  end

  private
    def contact
      @contact ||= Contact.find_by!(id: params.require(:id))
    end
end
