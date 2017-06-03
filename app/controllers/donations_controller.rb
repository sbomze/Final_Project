class DonationsController < ApplicationController
  def index
    @donations = Donation.where({:user_id => $id})

    render("donations/index.html.erb")
  end

  def show
    @donation = Donation.find(params[:id])

    render("donations/show.html.erb")
  end

  def new
    @donation = Donation.new

    render("donations/new.html.erb")
  end

  def create
    @donation = Donation.new

    @donation.user_id = params[:user_id]
    @donation.charity_id = Charity.find_by_name(params[:charity_name]).id
    @donation.amount = params[:amount]
    @donation.frequency = params[:frequency]

    save_status = @donation.save

    if save_status == true
      redirect_to("/donations/#{@donation.id}", :notice => "Donation created successfully.")
    else
      render("donations/new.html.erb")
    end
  end

  def edit
    @donation = Donation.find(params[:id])

    render("donations/edit.html.erb")
  end

  def update
    @donation = Donation.find(params[:id])

    @donation.user_id = params[:user_id]
    @donation.charity_id = Charity.where(:name => params[:charity_name]).pluck("id")
    @donation.amount = params[:amount]
    @donation.frequency = params[:frequency]

    save_status = @donation.save

    if save_status == true
      redirect_to("/donations/#{@donation.id}", :notice => "Donation updated successfully.")
    else
      render("donations/edit.html.erb")
    end
  end

  def destroy
    @donation = Donation.find(params[:id])

    @donation.destroy

    if URI(request.referer).path == "/donations/#{@donation.id}"
      redirect_to("/", :notice => "Donation deleted.")
    else
      redirect_to(:back, :notice => "Donation deleted.")
    end
  end
end
