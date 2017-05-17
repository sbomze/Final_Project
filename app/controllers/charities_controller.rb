class CharitiesController < ApplicationController
  def index
    @charities = Charity.all
    render("charities/index.html.erb")
  end

  def show
    @charity = Charity.find(params[:id])
  end

  def new_form
    render("charities/new_form.html.erb")
  end

  def create_row
    @charity = Charity.new
    @charity.dob = params[:dob]
    @charity.name = params[:name]
    @charity.bio = params[:bio]
    @charity.image_url = params[:image_url]
    @charity.save
    redirect_to("/charities")
  end

  def edit_form
    @charity = Charity.find(params[:id])
    render("charities/edit_form.html.erb")
  end

  def update_row
    @charity = Charity.find(params[:id])
    @charity.dob = params[:dob]
    @charity.name = params[:name]
    @charity.bio = params[:bio]
    @charity.image_url = params[:image_url]
    @charity.save
    render("show")
  end

  def destroy
    @charity = Charity.find(params[:id])
    @charity.destroy
    redirect_to("/charities")
  end
end
