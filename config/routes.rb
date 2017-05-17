Rails.application.routes.draw do
  # Route for bare domain:
  get('/', { :controller => 'charities', :action => 'index' })

  # Routes for the Actor resource:
  # CREATE
  get('/charities/new_form', { :controller => 'charities', :action => 'new_form' })
  get('/create_actor', { :controller => 'charities', :action => 'create_row' })

  # READ
  get('/charities', { :controller => 'charities', :action => 'index' })
  get('/charities/:id', { :controller => 'charities', :action => 'show' })

  # UPDATE
  get('/charities/:id/edit_form', { :controller => 'charities', :action => 'edit_form' })
  get('/update_actor/:id', { :controller => 'charities', :action => 'update_row' })

  # DELETE
  get('/delete_actor/:id', { :controller => 'charities', :action => 'destroy' })
  #------------------------------

end
