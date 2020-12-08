class ContactsController < ApplicationController
  def index
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render actiom: :create
    else
      render action: :index
    end
  end

  

  private
  def contact_params
    params.permit(:country, :fullname, :fullname_kana, :mail, :tel, :buget, :shooting_start_at_date, :shooting_time_duration, :comment)
  end

end
