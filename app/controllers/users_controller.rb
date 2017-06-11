class UsersController < ApplicationController

  def index
    # @user = User.find($id)
    @user = User.find(current_user.id)
    @donations = Donation.where({:user_id => current_user.id})

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
    @user.zip_code = params[:zip_code]
    @user.address = params[:address]
    @user.address_2 = params[:address_2]
    @user.city = params[:city]
    @user.state_province = params[:state_province]
    @user.country = params[:country]
    @user.card_number = params[:card_number]
    @user.security_code = params[:security_code]
    @user.password = params[:password]
    @user.exp_month_num = Date::MONTHNAMES.index(params[:exp_month_name])
    @user.exp_month_name = params[:exp_month_name]
    @user.exp_year = params[:exp_year]

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
    @user.security_code = params[:security_code]
    @user.password = params[:password]
    @user.exp_month_num = Date::MONTHNAMES.index(params[:exp_month_name])
    @user.exp_month_name = params[:exp_month_name]
    @user.exp_year = params[:exp_year]

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

    # if URI(request.referer).path == "/users/#{@user.id}"
      redirect_to("/", :notice => "User deleted.")
    # else
    #   redirect_to(:back, :notice => "User deleted.")
    # # end
  end
end
