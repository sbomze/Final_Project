class SessionsController < ApplicationController
  def new
    render("/sessions/new.html.erb")
  end
end
