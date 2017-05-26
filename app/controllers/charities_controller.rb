class CharitiesController < ApplicationController

  def test
    require 'mechanize'
    mechanize = Mechanize.new
    page = mechanize.get('https://www.gov.uk/')
    form = page.forms.first
    form['q'] = 'passport'
    page = form.submit
    page.search('#results h3').each do |h3|
      puts h3.text.strip
    end  
  end

  def index
    @charities = Charity.all
    # @user_name = User.where(:email => params[:email]).pluck("user_name").join(',')
    render("charities/index.html.erb")
  end

  def show
    @charity = Charity.find(params[:id])

    render("charities/show.html.erb")
  end

  def new
    @charity = Charity.new

    render("charities/new.html.erb")
  end

  def create
    @charity = Charity.new

    @charity.image_url = params[:image_url]
    @charity.name = params[:name]
    @charity.mission = params[:mission]
    @charity.rating = params[:rating]

    save_status = @charity.save

    if save_status == true
      redirect_to("/charities/#{@charity.id}", :notice => "Charity created successfully.")
    else
      render("charities/new.html.erb")
    end
  end

  def edit
    @charity = Charity.find(params[:id])

    render("charities/edit.html.erb")
  end

  def update
    @charity = Charity.find(params[:id])

    @charity.image_url = params[:image_url]
    @charity.name = params[:name]
    @charity.mission = params[:mission]
    @charity.rating = params[:rating]

    save_status = @charity.save

    if save_status == true
      redirect_to("/charities/#{@charity.id}", :notice => "Charity updated successfully.")
    else
      render("charities/edit.html.erb")
    end
  end

  def destroy
    @charity = Charity.find(params[:id])

    @charity.destroy

    if URI(request.referer).path == "/charities/#{@charity.id}"
      redirect_to("/", :notice => "Charity deleted.")
    else
      redirect_to(:back, :notice => "Charity deleted.")
    end
  end

end
