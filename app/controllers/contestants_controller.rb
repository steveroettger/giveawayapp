class ContestantsController < ApplicationController
  def index
    @contestants = Contestant.all
  end
  
  def new
    #create a new contestant by entering name + email
    @contestant = Contestant.new
  end
  
  def create 
    #create a new contestant by entering name + email
    @contestant = Contestant.new(params[:contestant])
    if @contestant.save
      redirect_to @contestant
    else
      render 'new'
    end
  end
end