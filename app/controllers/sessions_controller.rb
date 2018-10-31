class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      #log the user in and redirect to the user show page
      log_in user
      redirect_to user
    else
      #render 'new' and create an error message
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
    
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
