class HomesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    render :layout => false
  end

  def create
    name = params[:name]
    email_id = params[:email]
    phone = params[:phone]
    comments = params[:comments]
    ContactMailer.contact(name, email_id, phone, comments).deliver
    respond_to do |format|
      format.html {
        flash[:notice] = "Thanks for your interest in Rising Sun United !"
        redirect_to root_path
      }
    end
  end
end