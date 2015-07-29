Rails.application.routes.draw do

  # Routes for the Thought resource:
  # CREATE
  get '/new_thought' => 'thoughts#new'
  get '/create_thought' => 'thoughts#create'

  # READ
  get '/thoughts' => 'thoughts#index'
  get '/thoughts/:id' => 'thoughts#show'

  # UPDATE
  get '/thoughts/:id/edit' => 'thoughts#edit'
  get '/thoughts/:id/update' => 'thoughts#update'

  # DELETE
  get '/thoughts/:id/destroy' => 'thoughts#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

  #Create
  get '/new_idea' => 'idea#new'
  get '/create' => 'idea#create'
  
  #Read
  get '/idea/:id' => 'idea#show'
  get '/idea' => 'idea#index'
  
  #Update
  get '/idea/:id/edit' => 'idea#edit'
  get '/editing/:id' =>'idea#editing'
  
  #Destroy
  get 'idea/:id/remove' => 'idea#destroy'
  
end
