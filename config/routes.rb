Rails.application.routes.draw do

  # Route for bare domain:
  get('/', { :controller => 'charities', :action => 'index' })

  # Routes for the Charity resource:
  # CREATE
  get "/charities/new", :controller => "charities", :action => "new"
  post "/create_charity", :controller => "charities", :action => "create"

  # READ
  get "/charities", :controller => "charities", :action => "index"
  get "/charities/:id", :controller => "charities", :action => "show"

  # UPDATE
  get "/charities/:id/edit", :controller => "charities", :action => "edit"
  post "/update_charity/:id", :controller => "charities", :action => "update"

  # DELETE
  get "/delete_charity/:id", :controller => "charities", :action => "destroy"
  #------------------------------

end
