class SessionsController < ApplicationController

  def login_attempt
    current_user = User.new
    render("/sessions/login.html.erb")
  end

  def login_success
    $id = User.where(:email => params[:email]).pluck("id").join(',')
    current_user = User.find($id)
    # $email = params[:email]
    # current_user_name = User.where(:email => params[:email]).pluck("user_name").join(',')

    redirect_to("/charities")
  end

  def signup
    current_user = User.new
    current_user.first_name = params[:first_name]
    current_user.last_name = params[:last_name]
    current_user.user_name = params[:user_name]
    current_user.email = params[:email]
    current_user.zip_code = params[:zip_code]
    current_user.address = params[:address]
    current_user.address_2 = params[:address_2]
    current_user.city = params[:city]
    current_user.state_province = params[:state_province]
    current_user.country = "United States"
    current_user.card_number = params[:card_number]
    current_user.security_code = params[:security_code]
    current_user.password = params[:password]
    current_user.exp_month_num = Date::MONTHNAMES.index(params[:exp_month_name])
    current_user.exp_month_name = params[:exp_month_name]
    current_user.exp_year = params[:exp_year]

    current_user_name = User.where(:email => params[:email]).pluck("user_name").join(',')

    redirect_to("/create_user")
  end

end
