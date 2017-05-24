class SessionsController < ApplicationController

  def login_attempt
    $user = User.new
    render("/sessions/login.html.erb")
  end

  def login_success
    $id = User.where(:email => params[:email]).pluck("id")
    $user = User.find($id)
    $email = params[:email]

    $user_name = User.where(:email => params[:email]).pluck("user_name").join(',')
    redirect_to("/charities")
  end

  def signup
    $user = User.new
    $user.first_name = params[:first_name]
    $user.last_name = params[:last_name]
    $user.user_name = params[:user_name]
    $user.email = params[:email]
    $user.zip_code = params[:zip_code]
    $user.address = params[:address]
    $user.address_2 = params[:address_2]
    $user.city = params[:city]
    $user.state_province = params[:state_province]
    $user.country = params[:country]
    $user.card_number = params[:card_number]
    $user.security_code = params[:security_code]
    $user.password = params[:password]
    $user.exp_month_num = Date::MONTHNAMES.index(params[:exp_month_name])
    $user.exp_month_name = params[:exp_month_name]
    $user.exp_year = params[:exp_year]

    $user_name = User.where(:email => params[:email]).pluck("user_name").join(',')

    redirect_to("/create_user")
  end

end
