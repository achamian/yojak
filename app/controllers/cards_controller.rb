class CardsController < ApplicationController
  before_filter :available_card_statuses, :only => [:new, :edit]

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new(:project_id => params[:project_id])
  end

  def edit
    @card = Card.find(params[:id])
  end

  def create
    @card = Card.new(params[:card])
    @card.project_id = params[:project_id]
    if @card.save
      flash[:notice] = 'Card was successfully created.'
      redirect_to(@card.project)
    else
      render :action => "new"
    end
  end

  def update
    @card = Card.find(params[:id])

    if @card.update_attributes(params[:card])
      flash[:notice] = 'Card was successfully updated.'
      redirect_to(@card.project)
    else
      render :action => "edit"
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to(@card.project)
  end
  
  def available_card_statuses
    @card_statuses = CardStatus.find_all_by_project_id(params[:project_id])
  end
end
