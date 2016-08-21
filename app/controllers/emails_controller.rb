class EmailsController < ApplicationController

  def create
    ContactMailer.contact_us(params).deliver
    flash[:notice] = "Thank you for contacting us!"
    redirect_to contact_path
  end

end
