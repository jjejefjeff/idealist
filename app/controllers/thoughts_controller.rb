class ThoughtsController < ApplicationController

  def index
    @thoughts = Thought.all
  end

  def show
    @thought = Thought.find_by(id: params[:id])
  end

  def new
  end

  def create
    @thought = Thought.new
    @thought.name = params[:name]

    if @thought.save
      redirect_to "/thoughts/#{ @thought.id }"
    else
      render 'new'
    end
  end

  def edit
    @thought = Thought.find_by(id: params[:id])
  end

  def update
    @thought = Thought.find_by(id: params[:id])
    @thought.name = params[:name]

    if @thought.save
      redirect_to "/thoughts/#{ @thought.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @thought = Thought.find_by(id: params[:id])
    @thought.destroy


    redirect_to "/thoughts"
  end
end
