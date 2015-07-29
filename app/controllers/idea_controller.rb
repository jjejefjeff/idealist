class IdeaController < ApplicationController
  
  def new
  end
  
  def create
    @idea = Idea.new
    @idea.name = params['name']
    if @idea.save
      redirect_to "/idea/#{ @idea.id }"
    else
      render 'new'
    end
  end
  
  def show
    @idea = Idea.find_by(id: params['id'])
  end
  
  def index
    @ideas = Idea.all
  end
  
  def edit
    @idea = Idea.find_by(id: params['id'])
  end
  
  def editing
    @idea = Idea.find_by(id: params['id'])
    @idea.name = params['name']
    if @idea.save
      redirect_to "/idea/#{ @idea.id }"
    else
      redirect_to '/edit'
    end
  end
  
  def destroy
    @idea = Idea.find_by(id: params['id'])
    @idea.destroy
    redirect_to '/idea'
  end
  
end
