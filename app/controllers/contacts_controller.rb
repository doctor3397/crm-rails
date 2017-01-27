class ContactsController < ApplicationController
  # GET    /contacts         contacts#index
  def index
    @contacts = Contact.all
  end

  # GET    /contacts/new      contacts#new
  def new
    @contact = Contact.new
  end

  #  POST   /contacts          contacts#create
  def create
    @contact = Contact.new(contact_params)
    #@contact = Contact.new(first_name: params[:contact][:first_name])
    @contact.save
    redirect_to contacts_url
  end

  # GET    /contacts/:id      contacts#show
  def show
    @contact = Contact.find(params[:id])
  end

  private #Not for action
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :notes)
  end
end

# Started POST "/contacts" for 127.0.0.1 at 2017-01-27 15:14:10 -0500
# Processing by ContactsController#create as HTML
#   Parameters: {"utf8"=>"✓", "authenticity_token"=>"zeCUvDpIYIJMX9WFjGZEEHqMHs+dV+YeXleMxp/z1W/ZOj6W/GSvh8+e6QeDsyV152yneWDd9mcuWyJ6Cvh1bw==", "contact"=>{"first_name"=>"Theresa", "last_name"=>"Shen", "email"=>"doctor3397@gmail.com", "notes"=>"SW Developer"}, "commit"=>"Create Contact"}
