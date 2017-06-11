class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:first_name, :last_name, :user_name, :zip_code, :address, :address_2, :city, :state_province, :country, :card_number, :security_code, :password, :exp_month_num, :exp_month_name, :exp_year, :email])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:first_name, :last_name, :user_name, :zip_code, :address, :address_2, :city, :state_province, :country, :card_number, :security_code, :password, :exp_month_num, :exp_month_name, :exp_year, :email])
  end

  protect_from_forgery with: :exception

  def homepage
    render("layouts/homepage.html.erb")
  end

  def explain
    render("/layouts/explain.html.erb")
  end

end
