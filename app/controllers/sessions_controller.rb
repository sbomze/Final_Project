class SessionsController < ApplicationController

  def login
    render("/sessions/login.html.erb")
  end

  def login_attempt

    authorized_user = User.authenticate(params[:username],params[:login_password])

    if authorized_user
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
      redirect_to("/charities")

    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render("/sessions/login")
    end
  end

end
