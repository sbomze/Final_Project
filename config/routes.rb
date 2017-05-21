Rails.application.routes.draw do

  # Route for Bare Domain:
  get "/", :controller => "application", :action => "homepage"

  #Route for Sessions Resource
  get 'sessions/login', :controller => "sessions", :action => "login"
  get 'sessions/authenticate', :controller => "sessions", :action => "login_attempt"

  # Routes for the Donation resource:
  # CREATE
  get "/donations/new", :controller => "donations", :action => "new"
  post "/create_donation", :controller => "donations", :action => "create"

  # READ
  get "/donations", :controller => "donations", :action => "index"
  get "/donations/:id", :controller => "donations", :action => "show"

  # UPDATE
  get "/donations/:id/edit", :controller => "donations", :action => "edit"
  post "/update_donation/:id", :controller => "donations", :action => "update"

  # DELETE
  get "/delete_donation/:id", :controller => "donations", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

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

  # DONATE
  get "/charities/:id/donate", :controller => "charities", :action => "donate"

end
