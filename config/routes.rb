Rails.application.routes.draw do

  devise_for :users
  root 'charities#index'
  
  # Basic Routes
  get "/", :controller => "application", :action => "homepage"
  get "/explain", :controller => "application", :action => "explain"

  get "/charities/test", :controller => "charities", :action => "test"

  # Route for Sessions Resource
  get 'sessions/login', :controller => "sessions", :action => "login_attempt"
  get 'sessions/login_success', :controller => "sessions", :action => "login_success"
  get 'sessions/signup', :controller => "sessions", :action => "signup"

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
