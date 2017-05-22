class SessionsController < ApplicationController

  def login
    render("/sessions/login.html.erb")
  end

end
