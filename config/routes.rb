Rails.application.routes.draw do

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
