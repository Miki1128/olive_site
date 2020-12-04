class ContactsController < ApplicationController
  def index
  end

  def create
    Contact.create(contact_params)
  end
  

  private
  def contact_params
    params.require(:contact).permit(:country, :fullname, :fullname_kana, :mail, :tel, :buget, :shooting_start_at_date, :shooting_time_duration, :comment)
  end

end