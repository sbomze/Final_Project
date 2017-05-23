class UsersController < ApplicationController

  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])

    render("users/show.html.erb")
  end

  def new
    @user = User.new

    render("users/new.html.erb")
  end

  def create
    @user = User.new

    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.user_name = params[:user_name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.zip_code = params[:zip_code]
    @user.address = params[:address]
    @user.address_2 = params[:address_2]
    @user.city = params[:city]
    @user.state_province = params[:state_province]
    @user.country = params[:country]
    @user.card_number = params[:card_number]
    @user.expiration_date = params[:expiration_date]
    @user.security_code = params[:security_code]

    save_status = @user.save

    if save_status == true
      redirect_to("/users/#{@user.id}", :notice => "User created successfully.")
    else
      render("users/new.html.erb")
    end
  end

  def edit
    @user = User.find(params[:id])

    render("users/edit.html.erb")
  end

  def update
    @user = User.find(params[:id])

    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.user_name = params[:user_name]
    @user.email = params[:email]
    @user.zip_code = params[:zip_code]
    @user.address = params[:address]
    @user.address_2 = params[:address_2]
    @user.city = params[:city]
    @user.state_province = params[:state_province]
    @user.country = params[:country]
    @user.card_number = params[:card_number]
    @user.expiration_date = params[:expiration_date]
    @user.security_code = params[:security_code]

    save_status = @user.save

    if save_status == true
      redirect_to("/users/#{@user.id}", :notice => "User updated successfully.")
    else
      render("users/edit.html.erb")
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    if URI(request.referer).path == "/users/#{@user.id}"
      redirect_to("/", :notice => "User deleted.")
    else
      redirect_to(:back, :notice => "User deleted.")
    end
  end
end
