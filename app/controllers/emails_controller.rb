class EmailsController < ApplicationController

  def create
    if !params[:email].empty? && !params[:message].empty?
      ContactMailer.contact_us(params).deliver
      flash[:notice] = "Thank you for contacting us!"
    else
      flash[:error] = "You're missing an email and/or message contents. Please try again!"
    end
    redirect_to contact_path
  end

end
